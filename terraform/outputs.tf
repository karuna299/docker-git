output "instance_public_ip" {
  value = aws_instance.ubuntu_vm.public_ip
}
