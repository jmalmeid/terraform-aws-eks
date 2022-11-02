### frigga name
module "frigga" {
  source     = "git::https://github.com/jmalmeid/terraform-aws-spinnaker//modules/frigga"
  version    = "2.3.5"
  name       = var.name == null || var.name == "" ? "irsa" : var.name
  petname    = var.name == null || var.name == "" ? true : false
  max_length = 64
}

locals {
  name = module.frigga.name
  default-tags = merge(
    { "terraform.io" = "managed" },
    { "Name" = local.name },
  )
}
