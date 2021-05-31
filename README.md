# Shop Management

## Overview

The following repo contains a shop-management application.

### Used technologies:

   Spring Boot, Spring Security Basic, Spring Security JwtToken, Maven, FlyWay, MySql, Jenkins, Docker.

### ER Diagram

![img_1.png](img_1.png)

## Guidelines

1. Clone this repository

2. Install MySql database on locale machine and make appropriate configurations to connect application to database

3. Install Postman

4. Install NewMan

5. Install JMeter

6. Install Jenkins

7. Install Docker


## How to start application

### FlyWay

to populate database run from terminal:

**mvn flyway:clean**

**mvn flyway:migrate**

### Application

After successful execution run the application from terminal:

**mvn spring-boot:run**

### How to set up and run CI/CD pipeline using in Jenkins

Open a web browser and navigate to localhost:8080.

Click New Item on the left.

Create a multibranch pipeline job.

Configure and execute a pipeline job.
