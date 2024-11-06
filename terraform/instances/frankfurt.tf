resource "aws_instance" "frankfurt" {
  ami           = "ami-01df7a0dca87f5118"
  instance_type = "t2.micro"
  key_name      = "frankfurt-key"
  security_groups = ["${aws_security_group.allow_rdp.name}"]
}

resource "aws_security_group" "allow_rdp" {
  name        = "allow_rdp"
  description = "Allow rdp traffic"

  ingress {
    from_port   = 3389 # By default, the windows server listens on TCP port 3389 for RDP
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
