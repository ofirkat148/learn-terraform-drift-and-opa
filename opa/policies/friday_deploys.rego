package terraform.policies.friday_deploys


deny[msg] {
  time.weekday(time.now_ns()) == "FRIDAY"

  msg := "No deployments allowed on FRIDAY"
}
