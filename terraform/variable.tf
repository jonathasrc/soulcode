
variable "gcp_mysql_name_primary" {
  type    = string
  default = "mysql-soulcode"
}


variable "gcp_mysql_database_version" {
  type    = string
  default = "MYSQL_8_0_31"
}

variable "gcp_mysql_region_primary" {
  type    = string
  default = "us-central1"
}

variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
  default     = "soulcode-434516"
}

variable "gcp_mysql_tier" {
  type    = string
  default = "db-n1-standard-4"
}

variable "gcp_mysql_soulcodee_passowrd" {
  type    = string
  default = "Soulcode@!12pass"
}
