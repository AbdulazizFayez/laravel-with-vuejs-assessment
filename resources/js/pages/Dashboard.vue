<script setup lang="ts">

import { ref, watch } from 'vue'
import AppLayout from '@/layouts/AppLayout.vue';
import { dashboard } from '@/routes';
import { type BreadcrumbItem } from '@/types';
import { Head, router, usePage } from '@inertiajs/vue3';
import PlaceholderPattern from '../components/PlaceholderPattern.vue';

import EasyDataTable from 'vue3-easy-data-table';
import 'vue3-easy-data-table/dist/style.css'
// import type { Header, Item } from "vue3-easy-data-table";


const breadcrumbs: BreadcrumbItem[] = [
    {
        title: 'Dashboard',
        href: dashboard().url,
    },
];

const props = defineProps({
    products: {
        type: Object,
        required: true
    },
    filters: {
        type: Object,
        required: true
    },
    flash: {
        type: Object,
        required: true
    },
    jobMessages: {
        type: Object,
        required: true
    },
});

const page = usePage()   // ← this creates the reactive "page"
const notifications = page.props.notifications;
const search = ref(props.filters.search || '');

const serverOptions = ref({
    page: props.products.current_page || 1,
    rowsPerPage: props.products.per_page || 5,
    sortBy: props.filters.sort_by || null,        // must allow null
    sortType: props.filters.sort_direction === 'desc' ? 'desc' : 'asc',
})


// Headers configuration
const headers = [
    { text: "Product ID", value: "product_id", sortable: true },
    { text: "Type", value: "types", sortable: true },
    { text: "Brand", value: "brand", sortable: true },
    { text: "Model", value: "model", sortable: true },
    { text: "Capacity", value: "capacity", sortable: true },
    { text: "Quantity", value: "quantity", sortable: true },
];

// setInterval(() => {
//     router.reload({ only: ['products'] })
// }, 10000)


setInterval(() => {
    router.reload({ only: ['jobMessages'] })
}, 7000)

// Debounced search
// let searchTimeout;
// watch(search, (newVal) => {
//     clearTimeout(searchTimeout);
//     searchTimeout = setTimeout(() => {
//         updateTable({ page: 1 });
//     }, 500);
// });

// Debounced search
let timeout
watch(search, () => {
    clearTimeout(timeout)
    timeout = setTimeout(() => {
        serverOptions.value.page = 1  // Reset to page 1 on search
        triggerUpdate()
    }, 400)
})


// This gets called on pagination, sorting, rows per page change
const updateTable = () => {
    triggerUpdate()
}

// Handle server-side events
const triggerUpdate = () => {
    router.get(
        route('dashboard'),
        {
            search: search.value,
            page: serverOptions.value.page,
            rows_per_page: serverOptions.value.rowsPerPage,
            sort_by: serverOptions.value.sortBy || null,
            sort_direction: serverOptions.value.sortType || 'asc',
        },
        {
            preserveState: true,
            preserveScroll: true,
            replace: true,
        }
    );
};


const showUploadModal = ref(false)
const uploading = ref(false)

const uploadFile = () => {
  const file = document.querySelector('input[type="file"]').files[0]
  if (!file) return

  uploading.value = true

  const formData = new FormData()
  formData.append('excel_file', file)

  router.post(route('upload_excel_products'), formData, {
    forceFormData: true,
    onFinish: () => {
      uploading.value = false
      showUploadModal.value = false
    },
  })
}

const flashSuccess = ref(null);
const flashError = ref(null);

// Watch for flash message changes
watch(
  () => page.props.flash,
  (flash) => {
    if (flash?.success) {
      flashSuccess.value = flash.success;
      setTimeout(() => {
        flashSuccess.value = null;
      }, 5000); // 5 seconds
    }

    if (flash?.error) {
      flashError.value = flash.error;
      setTimeout(() => {
        flashError.value = null;
      }, 5000); // 5 seconds
    }
  },
  { immediate: true, deep: true }
);


const showMessages = ref(false)
let timeoutId = null

watch(
  () => page.props.jobMessages,
  (jobMessages) => {
    if (jobMessages?.message) {
      showMessages.value = jobMessages.message
      
      router.reload({ only: ['products'] })

      if (timeoutId) clearTimeout(timeoutId)
      timeoutId = setTimeout(() => {
        showMessages.value = false
        
        //Send post requst to set Read_at, so that next batch can apear
        router.post('update_job_notification', { id: jobMessages.id }, {
            preserveState: true,
            preserveScroll: true
        });

      }, 7000)
    }
  },
  { immediate: true }
)

</script>



<template>
    <Head title="Dashboard - Product Master List" />

    <AppLayout :breadcrumbs="breadcrumbs">
        
       <div class="p-6">
        <h1 class="text-2xl font-bold mb-6">Product Master List</h1>
        
        <!-- Job Notification upon Success -->
        <div v-if="showMessages" :key="jobMessages.id" 
            class="mb-4 p-4 rounded-lg text-white font-medium"
            :class="jobMessages.message_type === 'success' ? 'bg-green-600' : 'bg-red-600'">
        {{ jobMessages.message }}
        </div>

        <!-- Flash Success -->
            <div
            v-if="flashSuccess"
            class="bg-green-400 text-white p-3 mb-4 rounded rounded-lg"
            >
            {{ flashSuccess }}
            </div>

        <!-- Flash Error -->
            <div
            v-if="flashError"
            class="bg-red-400 text-white p-3 mb-4 rounded rounded-lg"
            >
            {{ flashError }}
            </div>

        <div class="mb-6">
            <button
            @click="showUploadModal = true"
            class="px-6 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 transition"
            >
            Upload Excel File
            </button>
        </div>

        <!-- Modal -->
        <div v-if="showUploadModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
            <div class="bg-white rounded-lg p-8 max-w-md w-full">
            <h2 class="text-xl font-bold mb-4">Upload Products Excel</h2>

            <form @submit.prevent="uploadFile" enctype="multipart/form-data">
                <input
                type="file"
                ref="fileInput"
                accept=".xlsx,.xls,.csv"
                class="block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded file:border-0 file:text-sm file:font-semibold file:bg-green-50 file:text-green-700 hover:file:bg-green-100"
                required
                />

                <div class="mt-6 flex gap-3 justify-end">
                <button
                    type="button"
                    @click="showUploadModal = false"
                    class="px-4 py-2 border rounded-lg hover:bg-gray-50"
                >
                    Cancel
                </button>
                <button
                    type="submit"
                    :disabled="uploading"
                    class="px-6 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 disabled:opacity-50"
                >
                    {{ uploading ? 'Uploading...' : 'Upload & Process' }}
                </button>
                </div>
            </form>
            </div>
        </div>
        <!-- Search Input -->
        <div class="mb-4">
            <input
                v-model="search"
                type="text"
                placeholder="Search products..."
                class="w-full md:w-96 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
        </div>

        <!-- EasyDataTable with Server-side Options -->
        <EasyDataTable
            :headers="headers"
            :items="props.products.data"            
            :server-items-length="props.products.total"                
            v-model:server-options="serverOptions"
            @update:server-options="updateTable"
            show-index
            theme-color="#3B82F6"
            rows-per-page-message="Rows per page:"
            :rows-items="[5, 10, 50, 100]"
            buttons-pagination
        >
            <!-- Optional: Loading state -->
            <template #loading>
                <div class="text-center py-4">Loading products...</div>
            </template>
        </EasyDataTable>

        <!-- Summary -->
        <div class="mt-4 text-sm text-gray-600">
            Showing {{ products.from }} to {{ products.to }} of {{ products.total }} results
        </div>
    </div>
        
    </AppLayout>
</template>
