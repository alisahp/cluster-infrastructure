variable "eks_subnets" {
  type        = "list"
  description = "Please provide subnets as <List>"
  default     = [""]
}

variable "eks_tags" {
  type        = "map"
  description = "Please provide tags for EKS as <Map>"

  default = {
    environment = "dev"
  }
}

variable "eks_vpc_id" {
  default     = ""
  description = "Please provide single VPC ID as <String>"
}

variable "eks_name" {
  default     = ""
  description = "Please provide the EKS Name as <String>"
}

variable "eks_kube_config_path" {
  default     = "./"
  description = "Please provide the path for kube configuration as <String>"
}

variable "eks_map_users" {
  type        = "list"
  description = "Please provide the list of members as <List>"
}

variable "eks_region" {
  default     = "us-east-1"
  description = "Please provide the region for EKS as <String>"
}
