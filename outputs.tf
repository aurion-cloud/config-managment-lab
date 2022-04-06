output "public_server_ip" {
    value = aws_instance.web_servers.*.public_ip
}