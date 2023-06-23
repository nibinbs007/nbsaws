resource "aws_internet_gateway" "cmt1-igw" {
  vpc_id     = aws_vpc.cmt1.id
  depends_on = [aws_vpc.cmt1]
  tags = {
    Name  = "cmt1-igw"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env   = "Dev"
  }
}

resource "aws_nat_gateway" "cmt1-natgw" {
  allocation_id = aws_eip.cmt1-nat-eip.id
  subnet_id     = aws_subnet.cmt1-sub1.id
  depends_on    = [aws_eip.cmt1-nat-eip, aws_subnet.cmt1-sub1]
  tags = {
    Name  = "cmt1-natgw"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env   = "Dev"
  }
}