# dockerImage
This repository contains the necessary files to Dockerize a simple HTML page served by Nginx. The project demonstrates how to build a Docker image for serving static content using Nginx, including all the required configuration files and instructions.

Files Included:
index.html: A simple HTML page that displays "Hello, Docker!".
nginx.conf: The Nginx configuration file that sets up Nginx to serve the index.html file on port 80.
Dockerfile: The Dockerfile to build the Docker image. It uses the official Nginx image and sets up the container to serve the HTML page.
README.md: Documentation that explains the purpose of the files and the steps to build and run the Docker container.

Steps to Build and Run:
Clone the repository:
git clone [https://github.com/your-username/dockerImage.git](https://github.com/Manjyyot/dockerImage.git)

Build the Docker image:
docker build -t nginx-image .

Run the Docker container:
docker run -p 80:80 docker-html-nginx

Visit the HTML page: Open your browser and go to http://localhost:80. You should see the "Hello, Docker!" page.

ECR Repository:
The Docker image has been pushed to an Amazon Elastic Container Registry (ECR). You can pull and run the image from there:
docker pull manjyot-nginx-docker
