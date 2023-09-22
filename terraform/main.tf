
provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIAUSKQ624RNGFSV7OH"
    secret_key = "/kiKjr2Run6PvY2H/182onerfFbV54++TpMkdnSK"
}

resource "aws-instance" "sample_instance" {
    ami = "ami-0ed99df77a82560e6"
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.sample_instance.public_ip
}