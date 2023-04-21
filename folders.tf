# Create the folders
resource "google_folder" "folders" {
  for_each     = var.folders
  display_name = each.key
  parent       = var.parent
}

# Create the folder IAM policies
data "google_iam_policy" "folders" {
  for_each = local.iam_policies

  dynamic "binding" {
    for_each = transpose(each.value)
    content {
      role    = binding.key
      members = binding.value
    }
  }

}

# Assign the folder IAM policies
resource "google_folder_iam_policy" "folders" {
  for_each    = local.iam_policies
  folder      = google_folder.folders[each.key].id
  policy_data = data.google_iam_policy.folders[each.key].policy_data
}
