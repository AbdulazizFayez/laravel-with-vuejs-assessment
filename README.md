# Laravel + Vue Starter Kit

## Installation 

1. after cloning the project, do `composer install`
2. then run `npm install`
3. make sure to create your .env file
4. import the sql file `abdulaziz-laravel-vuejs-project-assessment.sql`  to mysql.
5. run `php artisan migrate` then `php artisan db:seed`
6. then run `composer run dev` (this will run a collection of commands and building the frontend framework so we dont have to run `queue:work`, `npm run dev` and others).
7. and finally, if you're running on Laragon / Wamp, you may skip running  `php artisan server`, otherwise, you will need to open a second terminal to run it.
7. Enjoy

# Screenshots

## Initial Look
<img width="1282" height="750" alt="image" src="https://github.com/user-attachments/assets/3482aa2d-db08-486e-abfa-773a01b365b3" />

## Upon registering new account (no email verification is required)

<img width="1670" height="928" alt="image" src="https://github.com/user-attachments/assets/eabaa00f-c8a9-4dc9-9fe3-740ded16ad1d" />

## Main Dashboard with VueJS 3

<img width="1453" height="634" alt="image" src="https://github.com/user-attachments/assets/f1c2ebdf-c6e0-4fe3-afe6-93eae90aaa3f" />

## Validation handle if wrong excel file is uploaded 

<img width="1346" height="634" alt="image" src="https://github.com/user-attachments/assets/81c501b8-0013-4999-a6d0-f3c5c0f8d5b8" />

## Upon uploading correct Excel file
<img width="1467" height="719" alt="image" src="https://github.com/user-attachments/assets/bc43cb1d-d47a-46ff-8d7c-d7787de283fa" />

## Once the Excel file completes executing in background job (data upated from 5 record to 26 records according to excel)
<img width="1436" height="675" alt="image" src="https://github.com/user-attachments/assets/5f7ce5fd-6e99-47ad-9543-be2895821275" />

## Batch Queue workign in background and Completring successfully.
<img width="1246" height="392" alt="image" src="https://github.com/user-attachments/assets/51a09cdb-5e4a-4e75-80b3-8d3ce3f92fd6" />

## Search Filering 
<img width="1385" height="609" alt="image" src="https://github.com/user-attachments/assets/93331331-9aa8-42fb-80ca-b6820e3b094d" />


