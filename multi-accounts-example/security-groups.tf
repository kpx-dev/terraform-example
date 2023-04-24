resource "aws_security_group" "security_group" {
  name   = "${var.env_name}-multi-account-example"
  vpc_id = var.vpc_id
}

resource "aws_security_group_rule" "rule_ingress" {
  from_port         = 0
  protocol          = "all"
  security_group_id = aws_security_group.security_group.id
  self              = true
  to_port           = 0
  type              = "ingress"
}

resource "aws_security_group_rule" "rule_egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "all"
  security_group_id = aws_security_group.security_group.id
  to_port           = 0
  type              = "egress"
}
