# Assignment: Cloud deployment through infrastructure-as-code

The goal of this assignment is to verify that you can apply cloud engineering and devops
techniques in practice. To do so, we ask you to deploy an application to AWS, incl. all
the infrastructure that is needed to run the application.

## Instructions

As a side-hustle, Source has built an amazing and game-changing TODO-app: _Todoozie_. The backend
of Todoozie needs to deployed to the AWS cloud in a scalable and reproducible way. We are strong
believers in _infrastructure-as-code_ and we hope you are too! So your mission - should you choose
to accept it - is to make sure our backend is deployed completely through _code_. This means that
we should be able to reproduce the deployment completely without having to touch the AWS Web
Console.

We will provide you with a _sandbox_ account on AWS to develop and test your solution.
Credentials have been provided per email.

## Requirements

In the end, you should have the following:

1. The application code is running somewhere in AWS
2. There is a _PostgreSQL_ database running on AWS and the application can connect to it
3. The API that the backend exposes, is reachable over the internet, so we can access it from
   our (fictional) frontend

**Some hints and tips:**

We have made things easy for you by already Dockerizing the application. But that doesn't mean
you _have_ to use Docker to run the application on AWS. You can choose whatever platform/service
you think fits this application best.

You can start the application and a PostgreSQL database locally to test things out. You can do this
by running Docker Compose from the root of this repository:

```bash
docker-compose up
```

The application is configured through environment variables. Study the `docker-compose.yml` file
and/or the application code to see which environment variables are needed to make the application
run.

When documenting your solution, you can also use visuals to describe the architecture of your
solution.

### Bonus objectives

- The application has authentication built in, but you can add an extra layer of security
  by requiring API key & secret for accessing the API
- Build a CI/CD pipeline using GitHub Actions to deploy new versions of the application:
  - When new code is pushed, build new Docker images
  - Publish the Docker images somewhere
  - Deploy the new Docker image in the AWS setup you created
- Add some form of monitoring to see and be notified if the application is still healthy

### Non-functional requirements

- Everything is deployed using _infrastructure-as-code_
- You will use [**AWS CDK**](https://aws.amazon.com/cdk/) to deploy the code and infrastructure
  (this is also what we're using at Source.ag)
- You can use whatever programming language is supported by CDK: TypeScript, Python, Java, .NET, or Go
- Please make sure the final commit to your repository is done at least 24 hours before the start
  of your interview

## Deliverables

This assignment should be delivered in the following way:

- All (CDK) code is pushed to your private copy of this repository
- Documentation is provided in the README.md on how the solution works, and how to deploy it

## Assessment Criteria

The solution will be assessed on the following criteria:

- How is your code structured? Is it easy to read and follow?
- How clear is the documentation?
- How secure is the deployed infrastructure?
- Are there any clear bugs in your code?
- Can you clearly and concisely describe the process you have followed and the choices you have made?
- Can you describe the biggest short-comings of your solution and which steps could be taken to
  improve on that?

## IMPORTANT

You can keep the application and the infrastructure you've created running in the Sandbox account
until the tech interview. There you will show us that it's all running and how you've set it up.
