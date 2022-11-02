### frigga name
module "frigga" {
  source  = "git::https://github.com/jmalmeid/terraform-aws-spinnaker//modules/frigga"
  version = "2.3.5"
  name    = lookup(var.helm, "name", local.default_helm_config["name"])
  petname = true
}

locals {
  name = module.frigga.name
  default-tags = merge(
    { "terraform.io" = "managed" },
    { "Name" = local.name },
  )
}
