# Hosting a Full-Stack Application On AWS:

This is a Hosting section from the Udacity Full stack Nano-degree.
##### important note: This project is belong to the Udacity and any uses of this code should be with there approve.

---

![Untitled Design](https://user-images.githubusercontent.com/64021350/205122482-9229cb4c-f915-46da-b232-611e38ffa87e.png)

In this project I was provided with a developed Full-Stack application built for a retailer and deploy it to a cloud service provider so that it is available to customers. 

I used AWS console to start and configure the services the application needs such as a database to store product information and a web server allowing the site to be discovered by potential customers. Package.json scripts were modified and replace hard coded secrets with environment variables in your code.

I have register for a free account on CircleCi and connect my Github account to it. Based on the manual steps used to deploy the app, I did write a config.yml file that will make the process reproducible in CircleCi. I also set up the process to be executed automatically based when code is pushed on the main Github branch.

## To visit the website [Click here](http://ahmedmsoman-udagram.s3-website-us-east-1.amazonaws.com)

# Documentation:

1- [Infrastructure description](https://github.com/akiid777/udagram-AWS/blob/master/Docs/Infrastructure%20description.md)

2- [Installation](https://github.com/akiid777/udagram-AWS/blob/master/Docs/Installation.md)

3- [How It works](https://github.com/akiid777/udagram-AWS/blob/master/Docs/How%20It%20works.md)

4- [App dependencies](https://github.com/akiid777/udagram-AWS/blob/master/Docs/App_dependencies.md)

5- [CI-CD](https://github.com/akiid777/udagram-AWS/blob/master/Docs/CI-CD.md)


## ScreenShots:

### Elastic Beanstalk:

![Screenshot 2022-12-01 at 8 52 42 PM](https://user-images.githubusercontent.com/64021350/205136325-7ab33d16-140b-435a-871b-de8eb9d022d6.png)


### RDS (My database):

![Screenshot 2022-12-01 at 8 51 29 PM](https://user-images.githubusercontent.com/64021350/205136385-cfb401de-29e5-44a1-bd0d-26927a284b18.png)

![Screenshot 2022-12-01 at 8 51 43 PM](https://user-images.githubusercontent.com/64021350/205136426-44056029-d0ab-446c-9944-b25897022615.png)

### S3 (My bucket):

![Screenshot 2022-12-01 at 8 52 19 PM](https://user-images.githubusercontent.com/64021350/205136468-b1636d3c-007e-47af-8562-85385d36cdfe.png)

### CI/CD (My Circle Ci account):

![Screenshot 2022-12-01 at 6 39 26 PM](https://user-images.githubusercontent.com/64021350/205122766-31a6adb4-aa20-4104-8ba6-930ae4fdf904.png)

## License

[License](LICENSE.txt)
