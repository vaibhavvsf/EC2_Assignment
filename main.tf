/*
Project: 
Description: Terraform configuration for deploying EC2 infrastructure on AWS.

Components:
1. Creating an EC2 instance in AWS or creating a compute instance in the GCP using terraform.

2. Extend the code to create multiple Ec2 or Compute instances in the AWS or GCP with count and without count variable.

3. Adding labels to the AWS Ec2 or GCP  compute instances as a whole (that is all the Ec2 instances will have the same name) and  the labels vary for each Ec2 instance.

Owner: Vaibhav Fardale
Contact: vaibhav.vsf@gmail.com
Aws_Hashicorp version : 5.35.0
Terraform Version : Terraform v1.7.1
*/


################ Ec2 instance with count varable###############

resource "aws_instance" "Ec2_instance" {
  count                  = var.instance_count
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.Mysg.id]
  tags = {
    Name = "Ec2 instance-${count.index + 1}"

  }
}

################# Ec2 instance with out count varable ################

resource "aws_instance" "Ec2_instance_without_count" {
 
  for_each               = toset(var.server_name)
  instance_type          = "t2.micro"
  ami                    = "ami-0fc5d935ebf8bc3bc"
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.Mysg.id]

  tags = {

    Name = each.value
  }

}