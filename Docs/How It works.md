# How to run this project:

First of all, Clone the project.

Then, you need to add the env varibles in the .env file.

You have to create: `.env` file and add it in the `udagram/udagram-api` with the following parameters:

| Variable  | Value |
| ------------- | ------------- |
| POSTGRES_USERNAME  | username for database  |
| POSTGRES_PASSWORD  | password for database |
| POSTGRES_HOST  | link of the database  |
| POSTGRES_DB  | name of the database  |
| AWS_REGION  | AWS account region |
| AWS_PROFILE  | AWS Access key ID |
| AWS_BUCKET  | AWS bucket URL |
| URL  | Elastic Beanstalk ENV URL |
| JWT_SECRET  | Database SECRET |
| DB_PORT  | Port for DB  |

After that, use your CI/CD to upload the project to AWS. 

## Where to Found those Data: 

Those data are present in the AWS account and in the project.
