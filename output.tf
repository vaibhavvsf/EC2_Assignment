
#Output For Ec2_instance_with_count
output "ipaddresses_first_instance" {
  value = [for key, value in aws_instance.Ec2_instance : value.public_ip]

}

output "availability_zone_first_instance" {
  value = [for key, value in aws_instance.Ec2_instance : value.availability_zone]
}

output "private_ip_first_instance" {
  value = [for key, value in aws_instance.Ec2_instance : value.private_ip]
}

#Output For Ec2_instance_without_count
output "ipaddresses" {
  value = [for key, value in aws_instance.Ec2_instance_without_count : value.public_ip]

}

output "availability_zone" {
  value = [for key, value in aws_instance.Ec2_instance_without_count : value.availability_zone]
}

output "private_ip" {
  value = [for key, value in aws_instance.Ec2_instance_without_count : value.private_ip]
}

