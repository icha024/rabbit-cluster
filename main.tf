provider "aws" {
  access_key = "${var.ACCESS_KEY}"
  secret_key = "${var.SECRET_KEY}"
  region     = "eu-west-2"
}

resource "aws_instance" "ian-box" {
  ami           = "ami-ee6a718a"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"

  # vpc_security_group_ids = ["sg-07939d6f"]
  vpc_security_group_ids = "${var.security_group_ids}"

  root_block_device = {
    delete_on_termination = true
    volume_size           = 10
  }

  tags {
    Name = "ian-centos"
  }
}

resource "aws_instance" "ian-box2" {
  ami           = "ami-ee6a718a"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"

  # vpc_security_group_ids = ["sg-07939d6f"]
  vpc_security_group_ids = "${var.security_group_ids}"

  root_block_device = {
    delete_on_termination = true
    volume_size           = 10
  }

  tags {
    Name = "ian-centos2"
  }
}

# resource "aws_ebs_volume" "ian-storage" {
#   availability_zone = "us-west-2a"
#   size              = 10
# }


# resource "aws_volume_attachment" "ebs_att" {
#   device_name = "/dev/sdh"
#   volume_id   = "${aws_ebs_volume.ian-storage.id}"
#   instance_id = "${aws_instance.ian-box.id}"
# }

