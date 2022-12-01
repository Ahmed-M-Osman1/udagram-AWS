# What it the Infrastructure of this project?

This struction contain 3 different technologies:


- [Angular](https://angular.io/) - Single Page Application Framework 
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

### Angular:
Angular is a TypeScript-based free and open-source web application framework led by the Angular Team at Google and by a community of individuals and corporations. Angular is a complete rewrite from the same team that built AngularJS.
(Wikipedia)
This technology is responcible for Frontend.

### Node:
Node.js is an open-source server environment. Node.js is cross-platform and runs on Windows, Linux, Unix, and macOS. Node.js is a back-end JavaScript runtime environment. Node.js runs on the V8 JavaScript Engine and executes JavaScript code outside a web browser. 
(Wikipedia)
This technology is responcible for Backend.

### Express:
Express.js, or simply Express, is a back end web application framework for building RESTful APIs with Node.js, released as free and open-source software under the MIT License. It is designed for building web applications and APIs. It has been called the de facto standard server framework for Node.js.
This technology is responcible for API calls.



First of all, you need to add the env varibles in the .env file.

You have to create: `.env` file and add it in the `udagram/udagram-api` with the following parameters:

| Variable  | Value |
| ------------- | ------------- |
| POSTGRES_USERNAME  | Content Cell  |
| POSTGRES_PASSWORD  | Content Cell  |
| POSTGRES_HOST  | Content Cell  |
| POSTGRES_DB  | Content Cell  |
| AWS_REGION  | Content Cell  |
| AWS_PROFILE  | Content Cell  |
| AWS_BUCKET  | Content Cell  |
| URL  | Content Cell  |
| JWT_SECRET  | Content Cell  |
| DB_PORT  | Content Cell  |

### First: Circle CI:

![Screenshot 2022-12-01 at 6 39 26 PM](https://user-images.githubusercontent.com/64021350/205122766-31a6adb4-aa20-4104-8ba6-930ae4fdf904.png)


### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

```

### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres. <Place holder for link to classroom article>
1. In AWS, provision a s3 bucket for hosting the uploaded files. <Place holder for tlink to classroom article>
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd starter/udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd starter/udagram-frontend` to intall the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

