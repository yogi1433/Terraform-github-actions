output "instance_ip" {
    value = aws_instance.terra_infra.public_ip
}
output "instance_ami" {
    value = aws_instance.terra_infra.ami
}