module "eks" {
  source       = "github.com/gopeshkx/terraform-aws-eks.git"
  cluster_name = "${var.eks_name}"
  subnets      = "${var.eks_subnets}"
  tags         = "${var.eks_tags}"
  vpc_id       = "${var.eks_vpc_id}"
  version      = "1.14"
}
