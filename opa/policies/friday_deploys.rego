package terraform.policies.friday_deploys


deny[msg] {
  time.weekday(time.now_ns()) == "THURSDAY"

  msg := "No deployments allowed on THURSDAY"
}
