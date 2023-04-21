variable "folders" {
  description = "Map of folder names => principals => roles."
  type        = map(map(list(string)))
}

variable "parent" {
  description = "Parent Name (ex. organizations/123456789 or folders/123456789)"
  type        = string
}
