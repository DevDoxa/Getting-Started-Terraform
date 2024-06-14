variable "aws_access_k" {
  type        = string
  sensitive   = true
  description = "AWS access key"
}

variable "aws_secret_k" {
  type        = string
  sensitive   = true
  description = "AWS secret key"
}

variable "aws_region" {
  type        = string
  default     = "eu-west-3"
  description = "AWS region to use for ressources"
}

variable "enable_dns" {
  type        = bool
  default     = true
  description = "enable DNS hostnames in VPC"
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "base cidr block for vpc"
}

variable "vpc_subnet1_cidr_block" {
  type        = string
  default     = "10.0.0.0/24"
  description = "cidr block for subnet 1 in vpc"
}

variable "map_public_ip" {
  type        = bool
  default     = true
  description = "map a public IP address for Subnet instances"
}

variable "ingress_port" {
  type = map(object(
    {
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }
  ))

  default = {
    a = {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  description = "description"
}

variable "egress_port" {
  type = object(
    {
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }
  )

  default = {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  description = "description"
}

variable "aws_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "description"
}

variable "company" {
  type = string
  default = "Globomantics"
}

variable "project" {
  type = string
}

variable "billing_code" {
  type = string
}