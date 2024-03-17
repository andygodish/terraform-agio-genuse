variable "app_env" {
  type        = string
  nullable    = false
  description = "The env name: dev, qa, test or prod"
}
variable "app_prefix" {
  type        = string
  nullable    = false
  description = "The 3 or 4 character mnemonic for the application name "
}
variable "containers" {
  description = "List of objects to create some Blob containers in this Storage Account."
  type = list(object({
    name                  = string
    container_access_type = optional(string, "private")
    metadata              = optional(map(string))
  }))
  default = []
}
variable "location" {
  type        = string
  nullable    = false
  description = "The AZURE region location where this resource will be deployed to"
}
variable "sub_prefix" {
  type        = string
  nullable    = false
  description = "The 3 or 4 character mnemonic for this subscription"
}
variable "tags" {
  description = "tags to be applied to resources"
  type        = map(string)
  default     = {}
}