resource "aws_security_group" "demo" {
 name = "today-project-sg"
 description = "Allow traffic"
 vpc_id = "vpc-0c4b8291c098d8274"
 ingress {
   from_port   = 22
   to_port     = 22
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
 egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}

output "demo-sg-id" {
  value = aws_security_group.demo.id
}