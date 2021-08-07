terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name = "LEAFS"
}

data "aci_rest" "fabricLeNodePGrp" {
  dn = "uni/fabric/funcprof/lenodepgrp-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "fabricLeNodePGrp" {
  component = "fabricLeNodePGrp"

  equal "name" {
    description = "name"
    got         = data.aci_rest.fabricLeNodePGrp.content.name
    want        = module.main.name
  }
}
