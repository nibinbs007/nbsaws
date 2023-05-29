resource "aws_instance" "git_ins" {
  ami           = "ami-0126086c4e272d3c9"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.git_sub.id
  associate_public_ip_address = true
 tags = {
        Name  = "ec21_${lookup(var.tags,"name")}"
        Email = lookup(var.tags, "email")
    }
}