variable "folders" {
  description = "Map of folder names => principals => roles."
  type        = map(map(list(string)))
}

variable "parent" {
  description = "Parent Name (ex. organizations/123456789 or folders/123456789)"
  type        = string
}

variable "deletion_protection" {
  description = "Prevent Terraform from destroying the folders. Passed through to google_folder.deletion_protection (defaults to true since google provider 6.0.0)."
  type        = bool
  default     = true
}
