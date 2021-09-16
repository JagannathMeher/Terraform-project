resource "aws_instance" "ec2" {
    ami = var.ec2_ami
    instance_type = var.ec2_instance 
    tags = {
              Name = var.ec2_name 
              env = var.env_tags
              team = "operations"
    }
}
resource "aws_vpc "vpc_main" {
    cidr_block      = "10.0.0.0/16"
    instance_tenacy = "default"

    tags = {
        Name ="VPCMain"
        env = var.env_tag
        user_id = var.user_id
    }
}

resource "aws_subnet" "subnet_vpc_main" {
    vpc_id=aws_vpc.vpc_main.id 
    cidr_block     = "10.0.0.0/24"
    tags = {
    Name = "SubnetMain"
 }
}