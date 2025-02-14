resource "aws_lb_target_group" "tg-produto" {
  name        = "TG-produto"
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

resource "aws_lb_target_group" "tg-pedido" {
  name        = "TG-pedido"
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

resource "aws_lb_target_group" "tg-pagamento" {
  name        = "TG-pagamento"
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

resource "aws_lb_target_group" "tg-cliente" {
  name        = "TG-cliente"
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

resource "aws_lb_target_group_attachment" "attach_produto" {
  target_group_arn = aws_lb_target_group.tg-produto.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30080
  depends_on       = [aws_lb_target_group.tg-produto]
}

resource "aws_lb_target_group_attachment" "attach_cliente" {
  target_group_arn = aws_lb_target_group.tg-cliente.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30081
  depends_on       = [aws_lb_target_group.tg-cliente]
}

resource "aws_lb_target_group_attachment" "attach_pagamento" {
  target_group_arn = aws_lb_target_group.tg-pagamento.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30082
  depends_on       = [aws_lb_target_group.tg-pagamento]
}

resource "aws_lb_target_group_attachment" "attach_pedido" {
  target_group_arn = aws_lb_target_group.tg-pedido.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30083
  depends_on       = [aws_lb_target_group.tg-pedido]
}