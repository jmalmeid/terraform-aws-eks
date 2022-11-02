### frigga name
module "frigga" {
  source  = "git::https://github.com/jmalmeid/terraform-aws-spinnaker//modules/frigga"
  version = "2.3.6"
  name    = lookup(var.helm, "name", local.default_helm_config["name"])
  petname = true
}
