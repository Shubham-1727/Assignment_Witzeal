resource "aws_subnet" "subnet-2" {
        vpc_id = "${aws_vpc.custom-vpc.id}"
        cidr_block = "10.10.2.0/24"
        availability_zone = "us-east-2b"
        tags = {
                Name = "subnet-2"
        }
}

