variable "AWS_ACCESS_KEY_ID" {
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
}
variable "region" {
  type = string
}
variable "cidr" {
    type = map 
}
variable "tags" {
    type = map
}
