output "folders" {
  description = "Folder Resources Map"
  value       = { for folder in keys(var.folders) : folder => google_folder.folders[folder] }
}
