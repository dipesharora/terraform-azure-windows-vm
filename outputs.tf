#########################################################
## Outputs
#########################################################

output "vm_id_output" {
  value = "${azurerm_virtual_machine.winvm.*.id}"
}