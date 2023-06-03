# Create Windows VM
resource "aws_instance" "cmt1-win" {
  ami           = "ami-03ad4add8602210a8"
  instance_type = "t2.micro"
  key_name      = "git-key"
  subnet_id     = aws_subnet.cmt1-sub1.id
  vpc_security_group_ids = [aws_security_group.cmt1-sg1] 
  tags = {
    Name  = "cmt1-win"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env   = "Dev"
  }
}
