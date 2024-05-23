output "role_name" {
  value = aws_iam_role.example_role
}

output "roleattach" {
  value = aws_iam_instance_profile.ec2role.name
  
}