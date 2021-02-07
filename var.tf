variable "rds_vpc_id" {
  default     = "vpc-6bfc0b00"
  description = "our default rds vpc"
}
variable "rds_public_subnet" {
  default     = "subnet-0f716d67"
  description = "the public subnet of rds_vpc"
}
variable "rds_public_subnet_group" {
  default     = "default-vpc-6bfc0b00"
  description = "groupname"
}
