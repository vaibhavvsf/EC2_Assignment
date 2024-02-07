
# Terraform Variables for EC2_instance
# -------------------------------------
# Description: Variables file for configuring EC2_instance infrastructure on AWS.

variable "instance_count" {
  default = 2
}

variable "region" {
  default = "us-east-1"
}

variable "key_pair" {
  type = string
  default     = "./id_rsa.pub"
  description = "this is default environment"

  validation {
    condition     = fileexists(var.key_pair)
    error_message = "File keypair  not found"
  }
}

variable "server_name" {
  description = "this is server name"
  type        = list(string)
  default     = ["Ec2-Instance"]

}


variable "key_path" {
  type        = string
  default     = "./id_rsa.pub"
  description = "your key path for ssh connection"
  validation {
    condition     = fileexists(var.key_path)
    error_message = "public sssh key not found"
  }
}


variable "private_key_path" {
  type = string
  default     = "./id_rsa.pub"
  description = "your private key path for ssh connection"

  validation {
    condition     = fileexists(var.private_key_path)
    error_message = "private key not found"
  }
}



