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

variable "cache_instance_size" {
  type        = string
  description = "The size of the instance to launch"
  default     = "cache.t2.micro"
}

variable "engine_version" {
  type        = string
  description = "The version of Redis"
  default     = "5.0.3"
}

variable "parameter_group_family" {
  type        = string
  description = "The parameter group family to use for the instance"
  default     = "redis5.0"
}

variable "maxmemory_policy" {
  type        = string
  description = "The eviction policty when cache memory is overfilled"
  default     = "volatile-lru"
}
