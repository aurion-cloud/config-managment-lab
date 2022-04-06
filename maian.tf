data "aws_ami" "aws_ubuntu_ami" {
    owners = [var.aws_owner_id]
    most_recent = true
    filter {
        name = "name"
        values = [var.aws_ubuntu_name]
    }
}


data "aws_vpc" "main_vpc"{
    filter{
        name = "tag:Name"
        values = [var.vpc_name]
    }
}

