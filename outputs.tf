output "dn" {
  value       = aci_rest.fabricLeNodePGrp.id
  description = "Distinguished name of `fabricLeNodePGrp` object."
}

output "name" {
  value       = aci_rest.fabricLeNodePGrp.content.name
  description = "Leaf switch policy group name."
}
