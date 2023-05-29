/*variable "access_key" {
  description = "AWS access key"
  type        = string
}

variable "secret_key" {
  description = "AWS secret access key"
  type        = string
}
*/
variable "region" {
  type = string
}
variable "cidr" {
    type = map 
}
variable "tags" {
    type = map
}
