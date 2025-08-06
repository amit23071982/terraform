data aws_subnet "sub" {
  filter {
    name   = "vpc_id"
    values = [data.aws_vpc.default.id]
  }
}