Components:
1. Creating an EC2 instance in AWS or creating a compute instance in the GCP using terraform.

2. Extend the code to create multiple Ec2 or Compute instances in the AWS or GCP with count and without count variable.

3. Adding labels to the AWS Ec2 or GCP  compute instances as a whole (that is all the Ec2 instances will have the same name) and  the labels vary for each Ec2 instance.



To run the Terraform code to provision AWS EC2 instances, you need to follow these steps:

Prerquisite :
Terraform Version :v1.7.1
Aws Hashicorp version : 5.35.0

Step1 :
generate ssh key pair and add the path or replace the path with public and private key :

ssh-keygen -t rsa -b 4096 -C "your_email"

Add both public and private key securely and change the path of id_rsa and id_rsa.pub in variable.tf

Step2 : Create an I am user with required permisions to create ec2 instance and required infrastructure permissions and add the AWS_ACCESS_KEY and SECRET_KEY in environment variable or any voult. In my case I am using through environment variables.


Step3:

Run below commands to create your EC2 instances as required.

// intitialize required plugins and provider plugins
terraform init 

// Validate the code
terraform validate

// Check the provisioned resources
terraform plan -out=tfplan

// Apply the code and create the resources
terraform apply "tfplan"

// destroy the resources
terraform destroy 


Thank you 
Vaibhav Fardale















