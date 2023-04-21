locals {
  iam_policies = {
    for folder, principals in var.folders : folder => {
      for principal, roles in principals : principal => roles
      if length(roles) > 0
    }
    if length(principals) > 0
  }
}
