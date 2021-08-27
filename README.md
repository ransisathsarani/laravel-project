# laravel-project

How to set up and run the application :
 
 1. First clone the project into the htdocs folder inside your xampp folder. [Ex:  C:\xampp\htdocs]
 2. Open the Terminal and run command  "composer install"
 3. Create the mysql database as "assessment" and Import the sql file
 4. Run this endpoint using postman [http://localhost/laravel-project/public/api/v1/runner/1/form-data]
 5. You can generate Swagger Documentation by running "php artisan l5-swagger:generate"  and "php artisan serve" in your terminal.
 
 Expected Outcome: 
 
 
 {
    "success": "true",
    "data": {
        "id": 1,
        "runner_id": 1,
        "age": 4,
        "sex": "G",
        "color": "B",
        "created_at": "2021-08-24 10:03:56",
        "updated_at": "2021-08-24 10:03:56",
        "runner": {
            "name": "Eaglemont",
            "id": 1
        },
        "last_runs": [
            {
                "meeting": "Moe",
                "achieved_score": 2,
                "tot_score": 11,
                "score": "18.18",
                "length": 1.3,
                "code": 2050,
                "conditions": "Benchmark 64",
                "price": 3.3,
                "value": 35000,
                "remark": "Heavy 10",
                "created_at": "2021-08-25 11:09:08",
                "id": 2,
                "runner_id": 1
            },
            {
                "meeting": "Sandown",
                "achieved_score": 3,
                "tot_score": 10,
                "score": "30.00",
                "length": 2.6,
                "code": 1600,
                "conditions": "Benchmark 64",
                "price": 10,
                "value": 50000,
                "remark": "Soft 7",
                "created_at": "2021-08-24 09:43:26",
                "id": 1,
                "runner_id": 1
            },
            {
                "meeting": "Dundalk",
                "achieved_score": 4,
                "tot_score": 12,
                "score": "33.33",
                "length": 1.35,
                "code": 2414,
                "conditions": "Flat, handicap = true",
                "price": 3.5,
                "value": 0,
                "remark": "Good",
                "created_at": "2021-08-25 11:09:08",
                "id": 3,
                "runner_id": 1
            },
            {
                "meeting": "Dundalk",
                "achieved_score": 1,
                "tot_score": 14,
                "score": "7.14",
                "length": 0,
                "code": 2148,
                "conditions": "Flat, handicap= true",
                "price": 8,
                "value": 0,
                "remark": "Good",
                "created_at": "2021-08-25 11:09:08",
                "id": 3,
                "runner_id": 1
            },
            {
                "meeting": "Navan",
                "achieved_score": 8,
                "tot_score": 16,
                "score": "50.00",
                "length": 8.75,
                "code": 2011,
                "conditions": "Flat",
                "price": 4,
                "value": 0,
                "remark": "Soft",
                "created_at": "2021-08-25 11:10:05",
                "id": 4,
                "runner_id": 1
            }
        ]
    },
    "status": 200
}

Expected Outcome when enter the invalid runner id: 

{
    "success": "false",
    "data": null,
    "status": 404
}
