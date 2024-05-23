resource "aws_instance" "webserver-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "web_server-ec2"
  }
user_data = <<-EOF
#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
mkdir /var/www/html
echo 'Hey!! This is my First Website on server1!!' > /var/www/html/index.html
EOF
}