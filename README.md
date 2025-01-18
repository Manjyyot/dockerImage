# Dockerized HTML Page with Nginx

This repository contains the necessary files to **Dockerize** a simple HTML page served by **Nginx**. The project demonstrates how to build a Docker image for serving static content using Nginx, including all the required configuration files and instructions.

## Table of Contents

1. [Files Included](#files-included)
2. [Steps to Build and Run](#steps-to-build-and-run)
3. [Pushing Docker Image to ECR](#pushing-docker-image-to-ecr)
4. [ECR Repository](#ecr-repository)
5. [File Descriptions](#file-descriptions)

## Files Included

- **`index.html`**: A simple HTML page that displays "Hello, Docker!".
- **`nginx.conf`**: The Nginx configuration file that sets up Nginx to serve the `index.html` file on port 80.
- **`Dockerfile`**: The Dockerfile to build the Docker image. It uses the official Nginx image and configures the container to serve the HTML page.
- **`README.md`**: Documentation explaining the purpose of the files and the steps to build and run the Docker container.

## Steps to Build and Run

### 1. Clone the Repository

Clone this repository to your local machine:
git clone https://github.com/Manjyyot/dockerImage.git

2. Build the Docker Image
Navigate to the project directory and build the Docker image using the following command:
docker build -t nginx-image .

4. Run the Docker Container
Run the Docker container to serve the HTML page on port 80:
docker run -p 80:80 nginx-image

4. Visit the HTML Page
Open your browser and go to http://localhost:80. You should see the "Hello, Docker!" page.

Pushing Docker Image to ECR
To push the Docker image to AWS Elastic Container Registry (ECR), follow these steps:

1. Create a Public Repository in AWS ECR: Log in to the AWS Management Console and create a new repository.
2. Login to ECR using AWS CLI:
aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com
3. Tag and Push the Docker Image to ECR:
docker tag nginx-image:latest <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com/nginx-repo:latest
docker push <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com/nginx-repo:latest

ECR Repository
The Docker image has been pushed to an Amazon Elastic Container Registry (ECR). You can pull and run the image from there:
docker pull <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com/nginx-repo:latest
