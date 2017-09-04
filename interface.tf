# The following represents This
#module "vpc" {
#  source = "./vpc"
#  name   = "web"
#  cidr   = "10.0.0.0/16"
#  public_subnet = "10.0.1.0/24"
#}
#
variable "name" {
  description = "The name of the VPC"
}

variable "cidr" {
  description = "The CIDR of the VPC"
}

variable "public_subnet" {
  description = "The public subnet of the VPC"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you want to use private DNS within the VPC"
  default = true
}

variable "enable_dns_support" {
  description = "Should be true if you want to use private DNS within the VPC"
  default = true
}

output "public_subnet_id" {
  value = "${aws_subnet.public.id}"
}

output "vpc_id" {
  value = "${aws_vpc.tfb.id}"
}

output "cidr" {
  value = "${aws_vpc.tfb.cidr_block}"
}
