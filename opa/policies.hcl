policy "friday_deploys" {
  query = "data.terraform.policies.friday_deploys.deny"
  enforcement_level = "mandatory"
}

policy "public_ingress" {
  query = "data.terraform.policies.public_ingress.allow"
  enforcement_level = "mandatory"
}

policy "private_ingress" {
  query = "data.terraform.policies.private_ingress.deny"
  enforcement_level = "mandatory"
}


