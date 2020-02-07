variable "name" {
  description = "Name of the redis instance"
}

variable "subnets" {
  type        = list(string)
  description = "The list of subnet ids to made the instance available in"
}

variable "vpc_id" {
  description = "The VPC ID to place the instance in"
}

variable "security_groups" {
  type        = list(string)
  description = "The security groups to use for the instance"
}
