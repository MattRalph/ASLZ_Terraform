#Root Variables
variable "root_id" {
  type = string
}
variable "root_name" {
  type = string
  default = "value"
}

#connectivity settings
variable "deploy_connectivity_resources" {
  type = bool
  default = true
}
variable "connectivity_resources_location" {
  type = string
  default = "australiaeast"
}
variable "subscription_id_connectivity" {
  type = string
  default = "34e32e9d-ffd7-4d13-a5a3-bb8aafb2cec7"
}
variable "connectivity_resources_tags" {
  type = map(string)
  default = {
    resourcetype = "connectivity"
  }
}

#management settings
variable "deploy_management_resources" {
  type = bool
  default = false
}
variable "log_retention_in_days" {
  type = number
  default = 30
}
variable "security_alerts_email_address" {
  type = string
  default = "ict_infrastructure@aad.gov.au"
}
variable "management_resources_location" {
  type = string
  default = "australiaeast"
}
variable "subscription_id_management" {
  type = string
  default = "" #"18c98f54-9173-4b02-84f8-aef6c755f192"
}
variable "management_resources_tags" {
  type = map(string)
  default = {
    resourcetype = "management"
  }
}
#identity settings
variable "deploy_identity_resources" {
  type = bool
  default = false
}
variable "subscription_id_identity" {
  type = string
  default = "" #"1550df8e-0584-4501-a9e4-4d4611183a6e"
}
