# What is CI ?
CI/CD is a method to frequently deliver apps to customers by introducing automation into the stages of app development. The main concepts attributed to CI/CD are continuous integration, continuous delivery, and continuous deployment. CI/CD is a solution to the problems integrating new code can cause for development and operations teams (AKA "integration hell").

Specifically, CI/CD introduces ongoing automation and continuous monitoring throughout the lifecycle of apps, from integration and testing phases to delivery and deployment. Taken together, these connected practices are often referred to as a "CI/CD pipeline" and are supported by development and operations teams working together in an agile way with either a DevOps or site reliability engineering (SRE) approach.

### What's the difference between CI and CD (and the other CD)?
The acronym CI/CD has a few different meanings. The "CI" in CI/CD always refers to continuous integration, which is an automation process for developers. Successful CI means new code changes to an app are regularly built, tested, and merged to a shared repository. It’s a solution to the problem of having too many branches of an app in development at once that might conflict with each other.
The "CD" in CI/CD refers to continuous delivery and/or continuous deployment, which are related concepts that sometimes get used interchangeably. Both are about automating further stages of the pipeline, but they’re sometimes used separately to illustrate just how much automation is happening.
Continuous delivery usually means a developer’s changes to an application are automatically bug tested and uploaded to a repository (like GitHub or a container registry), where they can then be deployed to a live production environment by the operations team. It’s an answer to the problem of poor visibility and communication between dev and business teams. To that end, the purpose of continuous delivery is to ensure that it takes minimal effort to deploy new code.
Continuous deployment (the other possible "CD") can refer to automatically releasing a developer’s changes from the repository to production, where it is usable by customers. It addresses the problem of overloading operations teams with manual processes that slow down app delivery. It builds on the benefits of continuous delivery by automating the next stage in the pipeline.

![ci-cd-flow-desktop](https://user-images.githubusercontent.com/64021350/205131745-f1ebcadd-b162-4012-92c2-63b1f0ddac69.png)


## How did I used CI/CD in this project?

### First: Using of Circle CI:

Circle Ci is a very simple free tool for the CI/CD. simply attached your `GitHub` account with it. And we are ready to go.

![Screenshot 2022-12-01 at 6 39 26 PM](https://user-images.githubusercontent.com/64021350/205122766-31a6adb4-aa20-4104-8ba6-930ae4fdf904.png)


#### important: you need to add the env varibales to the Circle Ci:

![Screenshot 2022-12-01 at 3 00 43 PM](https://user-images.githubusercontent.com/64021350/205177256-9066d405-0a48-490b-ba79-5fffddf3a6e2.png)

# My Pipline:

file contains the following: 
```
version: 2.1
orbs:
  # orgs contain basc recipes and reproducible actions (install node, aws, etc.)
  node: circleci/node@5.0.2
  aws-cli: circleci/aws-cli@3.1.1
  eb: circleci/aws-elastic-beanstalk@2.0.1
  # different jobs are calles later in the workflows sections
jobs:
  build:
    docker:
      # the base image can run most needed actions with orbs
      - image: 'cimg/node:14.15'
    steps:
      # install node and checkout code
      - node/install:
          node-version: '14.15'
      - checkout
      - aws-cli/setup
      - eb/setup
      # Use root level package.json to install dependencies in the frontend app
      - run:
          name: Install Front-End Dependencies
          command: |
            echo "NODE --version" 
            echo $(node --version)
            echo "NPM --version" 
            echo $(npm --version)
            npm run frontend:install
      - run:
          name: Install API Dependencies
          command: |
            npm run api:install
      - run:
          name: Front-End Lint
          command: |
            npm run frontend:install
      - run:
          name: Front-End Build
          command: |
            npm run frontend:lint
      - run:
          name: API Build
          command: |
            npm run api:build
  # deploy step will run only after manual approval
  deploy:
    docker:
      - image: 'cimg/base:stable'
      # more setup needed for aws, node, elastic beanstalk
    steps:
      - node/install:
          node-version: '14.15'
      - eb/setup
      - aws-cli/setup
      - checkout
      - run:
          name: Deploy App
          command: |
            npm run deploy

workflows:
  udagram:
    jobs:
      - build
      - hold:
          filters:
            branches:
              only:
                - master
          type: approval
          requires:
            - build
      - deploy:
          requires:
            - hold
```

![Screenshot 2022-12-01 at 3 41 20 PM](https://user-images.githubusercontent.com/64021350/205182201-01b05ba8-2c85-4b76-84e6-5fb98d8a3d89.png)


### 1- Orbs:
  orgs contain basc recipes and reproducible actions:
  node: circleci/node@5.0.2                ` => install node in the docker container`
  
  aws-cli: circleci/aws-cli@3.1.1          ` => install aws-cli in the docker container`
  
  eb: circleci/aws-elastic-beanstalk@2.0.1 ` => install aws-elastic-beanstalk in the docker container`
  
### 2- Steps:
      # install node and checkout code
      - node/install:
          node-version: '14.15'
      - checkout
      - aws-cli/setup
      - eb/setup
### 3- Deploy:
Deploy in the AWS machine.
