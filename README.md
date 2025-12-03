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
