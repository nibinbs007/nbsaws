# Create public route table
resource "aws_route_table" "cmt1_pub_rt1" {
  vpc_id = aws_vpc.cmt1.id
  depends_on = [ aws_vpc.cmt1, aws_internet_gateway.cmt1-igw ]

  route {
    cidr_block        = "10.192.0.0/24"
    local_gateway_id = aws_vpc.cmt1.id
  }

  route {
    cidr_block        = "202.166.43.187/32"
    gateway_id        = aws_internet_gateway.cmt1-igw.id
  }

  tags = {
    Name = "cmt1-public-rt1"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env   = "Dev"
  }
}

#Create Private Route Table
resource "aws_route_table" "cmt1_priv_rt1" {
  vpc_id = aws_vpc.cmt1.id
  depends_on = [ aws_vpc.cmt1, aws_nat_gateway.cmt1-natgw ]

  route {
    cidr_block        = "10.192.0.0/24"
    local_gateway_id  = aws_vpc.cmt1.id
  }

  route {
    cidr_block        = "202.166.43.187/32"
    gateway_id        = aws_nat_gateway.cmt1-natgw.id
  }

  tags = {
    Name = "cmt1-priv_rt1"
    Email = "nibin.bahulayansheena@ncs.com.sg"
    Env   = "Dev"
  }
}
