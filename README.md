# Hosting a Full-Stack Application On AWS:

This is a Hosting section from the Udacity Full stack Nano-degree.
##### important note: This project is belong to the Udacity and any uses of this code should be with there approve.

---

![Untitled Design](https://user-images.githubusercontent.com/64021350/205122482-9229cb4c-f915-46da-b232-611e38ffa87e.png)

In this project I was provided with a developed Full-Stack application built for a retailer and deploy it to a cloud service provider so that it is available to customers. 

I used AWS console to start and configure the services the application needs such as a database to store product information and a web server allowing the site to be discovered by potential customers. Package.json scripts were modified and replace hard coded secrets with environment variables in your code.

I have register for a free account on CircleCi and connect my Github account to it. Based on the manual steps used to deploy the app, I did write a config.yml file that will make the process reproducible in CircleCi. I also set up the process to be executed automatically based when code is pushed on the main Github branch.

# Steps of my work:

First of all, you need to add the env varibles in the .env file.

You have to create: 

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

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
