resource "aws_lb_target_group" "tg" {
  name        = "TG-${var.projectName}"
  port        = 80
  target_type = "instance"
  protocol    = "HTTP"

  vpc_id = data.aws_vpc.vpc.id

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    path                = "/actuator/health"
    port                = "traffic-port"
    matcher             = "200"
    timeout             = 5
    unhealthy_threshold = 2
  }
}

resource "aws_lb_target_group_attachment" "attach" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30080
}