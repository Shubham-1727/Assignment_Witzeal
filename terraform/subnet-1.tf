resource "aws_subnet" "subnet-1" {
        vpc_id = "${aws_vpc.custom-vpc.id}"
        cidr_block = "10.10.1.0/24"
        availability_zone = "us-east-2a"
        tags = {
                Name = "subnet-1"
        }
}
