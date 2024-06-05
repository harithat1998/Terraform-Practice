#string variable type:

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
}

#Number variable type:

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}

#boolen variable type:

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = false
}