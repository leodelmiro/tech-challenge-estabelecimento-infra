resource "aws_eks_access_policy_association" "eks-policy" {
  cluster_name  = aws_eks_cluster.eks-cluster.name
  policy_arn    = var.policyArn
  principal_arn = "arn:aws:iam::${data.aws_iam_role.LabRole}:role/voclabs"

  access_scope {
    type = "cluster"
  }
}