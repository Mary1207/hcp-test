resource "aws_instance" "test" {
  ami = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"
  tags = {
    Name = "steven"
  }
}

resource "aws_iam_user" "tivo" {
  name = "loadbalancer"
  path = "/system/"

  tags = {
    tag-key = "tivo"
  }
}