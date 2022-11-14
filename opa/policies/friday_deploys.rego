package terraform.policies.friday_deploys


deny[msg] {
  time.weekday(time.now_ns()) == "MONDAY"

  msg := "No deployments allowed on MONDAY"
}
