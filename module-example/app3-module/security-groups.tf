module "module_security_group" {
  count  = 5
  name   = "app3-module - SG ${count.index}"
  source = "../modules/security_group"
}
