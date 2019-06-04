variable "enable" {
  default = true
}

variable "api" {
  description = "id of an aws_api_gateway_rest_api resource"
  type = "string"
}

variable "resources" {
  description = "List of the ids of an aws_api_gateway_resource resource"
  type = "list"
}

variable "methods" {
  type        = "list"
  description = "List of permitted HTTP methods. OPTIONS is added by default."
}

variable "origin" {
  description = "Permitted origin"
  default     = "*"
}

variable "headers" {
  description = "List of permitted headers. Default headers are alway present unless discard_default_headers variable is set to true"
  default     = ["Content-Type", "X-Amz-Date", "Authorization", "X-Api-Key", "X-Amz-Security-Token"]
}

variable "discard_default_headers" {
  default     = false
  description = "When set to true to it discards the default permitted headers and only includes those explicitly defined"
}