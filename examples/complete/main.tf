module "aci_fabric_leaf_switch_policy_group" {
  source = "netascode/fabric-leaf-switch-policy-group/aci"

  name                = "LEAFS"
  psu_policy          = "PSU1"
  node_control_policy = "NC1"
}
