resource "aws_security_group" "demo_security_group" {
    name = "demo scurity Group"
    description = "Allow inbound traffic for ssh & outbound traffic for all"
}

resource "aws_security_group_rule" "allow_ssh_port" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.demo_security_group.id
}

resource "aws_security_group_rule" "allow_all_outbound_port" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.demo_security_group.id
}