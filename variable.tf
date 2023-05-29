/*variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS access key"
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS secret access key"
  type        = string
}*/
variable "region" {
  type = string
}
variable "cidr" {
    type = map 
}
variable "tags" {
    type = map
}
