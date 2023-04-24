module "module_security_group" {
  count  = 5
  name   = "app2-module - SG ${count.index}"
  source = "../modules/security_group"
}
