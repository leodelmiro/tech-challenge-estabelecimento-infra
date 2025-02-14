resource "aws_lb" "alb-produto" {
  name               = "ALB-produto"
  internal           = false
  load_balancer_type = "application"
  subnets            = data.aws_subnets.subnets.ids
  security_groups    = [aws_security_group.sg.id]
}

resource "aws_lb_listener" "listener-produto" {
  load_balancer_arn = aws_lb.alb-produto.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg-produto.arn
  }
}

resource "aws_lb" "alb-pagamento" {
  name               = "ALB-pagamento"
  internal           = false
  load_balancer_type = "application"
  subnets            = data.aws_subnets.subnets.ids
  security_groups    = [aws_security_group.sg.id]
}

resource "aws_lb_listener" "listener-pagamento" {
  load_balancer_arn = aws_lb.alb-pagamento.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg-pagamento.arn
  }
}

resource "aws_lb" "alb-cliente" {
  name               = "ALB-cliente"
  internal           = false
  load_balancer_type = "application"
  subnets            = data.aws_subnets.subnets.ids
  security_groups    = [aws_security_group.sg.id]
}

resource "aws_lb_listener" "listener-cliente" {
  load_balancer_arn = aws_lb.alb-cliente.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg-cliente.arn
  }
}

resource "aws_lb" "alb-pedido" {
  name               = "ALB-pedido"
  internal           = false
  load_balancer_type = "application"
  subnets            = data.aws_subnets.subnets.ids
  security_groups    = [aws_security_group.sg.id]
}

resource "aws_lb_listener" "listener-pedido" {
  load_balancer_arn = aws_lb.alb-pedido.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg-pedido.arn
  }
}