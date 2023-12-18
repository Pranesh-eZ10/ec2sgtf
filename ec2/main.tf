module "sg" {
  source = "../sg"
}

resource "aws_instance" "project_instance" {
  ami             = "ami-0e83be366243f524a"
  instance_type   = "t2.micro"
  subnet_id = "subnet-02dd3ec39080d8ef5"
  key_name = "qtree"
  security_groups = [module.sg.demo-sg-id]
  #[module.<module name>.<output name>]
}

output "ec2_instance_id" {
  value = aws_instance.project_instance.id
}