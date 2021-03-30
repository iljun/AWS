resource "aws_key_pair" "demo_key" {
    key_name = "demo"
    public_key = file("~/.ssh/demo_key.pub")
}