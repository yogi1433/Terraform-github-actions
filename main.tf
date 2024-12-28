data "aws_ami" "latest_ami_id"{
    most_recent = true
    owners = [ "amazon" ]
}
resource "aws_instance" "terra_infra" {
  ami = data.aws_ami.latest_ami_id.id
  instance_type = var.instance_type
  key_name = "assist"
  tags = {
    name = "aws_instance"
  }
}