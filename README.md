 AWS Terraform Mini Project

This project demonstrates using Terraform to deploy a simple web server on AWS. It includes:
- An EC2 instance running Amazon Linux 2
- A security group allowing HTTP traffic (port 80)
- A basic HTML webpage served via Apache

## How to Use
1. Clone this repository.
2. Initialize Terraform: `terraform init`
3. Plan the deployment: `terraform plan`
4. Apply the configuration: `terraform apply`


# AWS Terraform Web Server Project

This project demonstrates the use of **Terraform** to create an **AWS EC2 instance** that can be configured as a **web server**. The goal is to show how to automate the creation and management of AWS infrastructure for hosting a website.

## Project Overview

The project uses **Terraform** to:
- Create an **AWS EC2 instance**
- Configure the EC2 instance as a **web server** (Apache or Nginx)
- Set up a **Security Group** to allow HTTP/HTTPS traffic

## Prerequisites

- **AWS account**
- **Terraform** installed on your local machine
- **AWS CLI** configured with your credentials

## Setup and Deployment

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/dineshbabun23/aws-terraform-mini-project.git
cd aws-terraform-mini-project
