resource "aws_instance" "main" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = merge(
    local.common_tags,
    {
      Name = "${local.project_name}-${local.environment}-ec2"
    }
  )
}



resource "aws_s3_bucket" "demo" {
 bucket = "${var.project_name}-data-02"
 tags= local.common_tags
}
