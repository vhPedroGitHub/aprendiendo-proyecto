variable "vpc_id" {
  description = "ID of vpc to apply the SG"
}
variable "sg_name" {
  description = "The name of SG"
}
variable "sg_description" {
  description = "Brief description of SG"
  default     = "security groups"
}
variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}

