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


##### Dependancies used in backend:
```
"dependencies": {
    # Types for type script:
    "@types/bcryptjs": "2.4.2",
    "@types/jsonwebtoken": "^8.3.2",
    "@types/validator": "^13.7.10",
    "aws-sdk": "^2.429.0", 
    # crypt password
    "bcryptjs": "2.4.3",
    # parser the data.
    "body-parser": "^1.18.3",
    # send data
    "cors": "^2.8.5",
    # save env
    "dotenv": "^8.2.0",
    # validate the Email
    "email-validator": "^2.0.4",
    "express": "^4.16.4",
    "jsonwebtoken": "^8.5.1",
    "pg": "^8.7.1",
    "reflect-metadata": "^0.1.13",
    "sequelize": "^6.5.0",
    "sequelize-typescript": "^2.1.3"
  },
  "devDependencies": {
    "@types/bluebird": "^3.5.26",
    "@types/cors": "^2.8.6",
    "@types/express": "^4.16.1",
    "@types/node": "^11.11.6",
    "@types/sequelize": "^4.27.44",
    "@typescript-eslint/eslint-plugin": "^2.19.2",
    "@typescript-eslint/parser": "^2.19.2",
    "chai": "^4.2.0",
    "chai-http": "^4.2.1",
    "eslint": "^6.8.0",
    "eslint-config-google": "^0.14.0",
    "mocha": "^6.1.4",
    "ts-node-dev": "^1.0.0-pre.32",
    "typescript": "^4.2.3"
  }
```

### Express:
Express.js, or simply Express, is a back end web application framework for building RESTful APIs with Node.js, released as free and open-source software under the MIT License. It is designed for building web applications and APIs. It has been called the de facto standard server framework for Node.js.

This technology is responcible for API calls. This is acctully adepandance in the Backend.


![Untitled Design](https://user-images.githubusercontent.com/64021350/205179662-3103f6f5-82ab-4353-95b4-0a3966dc2c5e.png)
