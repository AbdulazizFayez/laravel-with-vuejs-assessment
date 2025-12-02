<script setup lang="ts">

import { ref, watch } from 'vue'
import AppLayout from '@/layouts/AppLayout.vue';
import { dashboard } from '@/routes';
import { type BreadcrumbItem } from '@/types';
import { Head, router, useForm } from '@inertiajs/vue3';
import PlaceholderPattern from '../components/PlaceholderPattern.vue';

import EasyDataTable from 'vue3-easy-data-table';
import 'vue3-easy-data-table/dist/style.css'
// import type { Header, Item } from "vue3-easy-data-table";


const breadcrumbs: BreadcrumbItem[] = [
    {
        title: 'Dashboardee',
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
    }
});

const search = ref(props.filters.search || '');

const serverOptions = ref({
    page: props.products.current_page || 1,
    rowsPerPage: props.products.per_page || 5,
    sortBy: props.filters.sort_by || null,        // must allow null
    sortType: props.filters.sort_direction === 'desc' ? 'desc' : 'asc',
})


// Headers configuration
const headers = [
    { text: "ID", value: "id", sortable: true },
    { text: "Product ID", value: "product_id", sortable: true },
    { text: "Type", value: "types", sortable: true },
    { text: "Brand", value: "brand", sortable: true },
    { text: "Model", value: "model", sortable: true },
    { text: "Capacity", value: "capacity", sortable: true },
    { text: "Quantity", value: "quantity", sortable: true },
];

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


</script>



<template>
    <Head title="Dashboardaaa" />

    <AppLayout :breadcrumbs="breadcrumbs">
        
       <div class="p-6">
        <h1 class="text-2xl font-bold mb-6">Product Master List</h1>
        
        
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
        
      <!-- Flash Message -->
  <div v-if="$page.props.flash?.message" class="mb-4 p-4 bg-blue-100 text-blue-800 rounded-lg">
    {{ $page.props.flash.message }}
  </div>
    </AppLayout>
</template>
