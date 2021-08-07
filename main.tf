resource "aci_rest" "fabricLeNodePGrp" {
  dn         = "uni/fabric/funcprof/lenodepgrp-${var.name}"
  class_name = "fabricLeNodePGrp"
  content = {
    name = var.name
  }
}

resource "aci_rest" "fabricRsPsuInstPol" {
  dn         = "${aci_rest.fabricLeNodePGrp.id}/rspsuInstPol"
  class_name = "fabricRsPsuInstPol"
  content = {
    tnPsuInstPolName = var.psu_policy
  }
}

resource "aci_rest" "fabricRsNodeCtrl" {
  dn         = "${aci_rest.fabricLeNodePGrp.id}/rsnodeCtrl"
  class_name = "fabricRsNodeCtrl"
  content = {
    tnFabricNodeControlName = var.node_control_policy
  }
}
