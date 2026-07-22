provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "one" {
    count = 10
    ami = "ami-01edba92f9036f76e"
    instance_type = "t3.micro"
    tags = {
        Name = "dev-server"
    }
}
