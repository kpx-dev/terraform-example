resource "aws_security_group" "security_group" {
  count  = 500
  name   = "app1-non-module ${count.index}"
  vpc_id = "vpc-070dd0c66d86ced4b"
}

resource "aws_security_group_rule" "rule_ingress" {
  count             = 500
  from_port         = 0
  protocol          = "all"
  security_group_id = aws_security_group.security_group[count.index].id
  self              = true
  to_port           = 0
  type              = "ingress"
}

resource "aws_security_group_rule" "rule_egress" {
  count             = 500
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "all"
  security_group_id = aws_security_group.security_group[count.index].id
  to_port           = 0
  type              = "egress"
}

# resource "aws_security_group" "security_group_new" {
#   name   = "app1-non-module - new SG"
#   vpc_id = "vpc-070dd0c66d86ced4b"
# }
