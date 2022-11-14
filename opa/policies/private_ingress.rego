package terraform.policies.private_ingress

import input.plan as tfplan

deny[msg] {
  r := tfplan.resource_changes[_]
  r.type == "aws_security_group"
  r.change.after.ingress[_].cidr_blocks[_] == "192.80.0.0/16"
  msg := sprintf("%v has 192.80.0.0/16 as allowed ingress", [r.address])
}
