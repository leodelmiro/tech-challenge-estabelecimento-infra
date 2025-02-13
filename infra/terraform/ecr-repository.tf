resource "aws_ecr_repository" "fiap-estabelecimento-cliente" {
  name                 = "fiap-estabelecimento-cliente"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "fiap-estabelecimento-produto" {
  name                 = "fiap-estabelecimento-produto"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "fiap-estabelecimento-pedido" {
  name                 = "fiap-estabelecimento-pedido"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "fiap-estabelecimento-pagamento" {
  name                 = "fiap-estabelecimento-pagamento"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}