resource "aws_instance" "demo_ec2" {
    ami = "<AWS AMI>"
    instance_type = "t2.micro"
    vpc_security_group_ids = [
        aws_security_group.demo_security_group.id
    ]
    key_name = "demo_key"
}