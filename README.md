# CICD Pipeline for Node Application deploy on ECS Fargate with Terraform

This repository contains the Terraform code and configuration for setting up a Continuous Integration and Continuous Deployment (CICD) pipeline to deploy a Node.js application on AWS Elastic Container Service (ECS) Fargate. The pipeline automates the creation of all necessary AWS resources and components, including ECS service and task definition, ECR registry, load balancer, NAT gateway, EIP, VPC, subnets, route tables, IAM roles, and policies.

## Prerequisites

Before you begin, ensure you have the following prerequisites in place:

1. **AWS Account**: You need an AWS account to create and manage the required resources.

2. **AWS CLI**: Install and configure the AWS Command Line Interface (CLI) with the necessary IAM permissions.

3. **Terraform**: Install Terraform on your local development machine. You can download it from the [Terraform website](https://www.terraform.io/downloads.html).

4. **Node.js Application**: You should have your Node.js application code ready to be containerized and deployed.

## Getting Started

Follow these steps to set up the CICD pipeline for deploying your Node.js application on ECS Fargate:

1. **Clone the Repository**:

   ```shell
   git clone https://github.com/sumanprasad007/ecs-project-using-terraform.git
   cd ecs-project-using-terraform
    ```

2. **AWS Credentials**:

Ensure that your AWS credentials are correctly configured either by setting up AWS CLI with aws configure or by using IAM roles if you're running this in an AWS environment.

3. **Configure Terraform Variables**:

Update the terraform.tfvars file with your configuration. Provide values for variables like region, project name, and any other variables defined in the Terraform code.

4. **Initialize Terraform**:

Run the following command to initialize Terraform and download the necessary providers:
```
terraform init
```

5. **Deploy Resources**:

Run the following command to create the AWS resources:

```
terraform apply
```

6. **Setting up CICD**:

Integrate this Terraform code with your CI/CD platform using GitHub Actions to automate the deployment process. Ensure that your CI/CD platform can trigger Terraform deployments with the necessary environment variables and secrets securely. Add the access and secret key of AWS as secrets inside the Github repo secrets section to execute the pipeline efficiently.

7. **Deploy Your Application**:

Once the infrastructure is provisioned, build and deploy your Node.js application to the ECS Fargate cluster using the provided ECS task definition and ECR registry URL.

8. **Cleaning Up**:

To avoid incurring unnecessary AWS charges, make sure to destroy the resources when they are no longer needed:

```
terraform destroy
```

9.**Security**:

Always follow AWS best practices for security, such as proper IAM roles, permissions, and security groups for your resources.

10.**Contributing**:

Feel free to contribute to this project by opening issues or pull requests. We welcome your input and improvements!

