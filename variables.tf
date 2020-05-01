#########################################################
## Variables Declarations
#########################################################

# Shared
variable "location" {
  type        = string
  description = "Set this to the location where your Azure resources will be created e.g. centralus, eastus, eastus2 etc."
}

# Resource Group
variable "resource_group_name" {
  type        = string
  description = "Set this to the name of the Resource Group in which Virtual Machine and dependent resources will be created."
}

# Tags
variable "tags" {
  type        = map
  description = "Set this to the mapping of tags to assign to the resource."
}

#Network Interface
variable "nic_subnet_id" {
  type        = string
  description = "Set this to the ID of the Subnet where this Network Interface should be located in."
}

# Virtual Machine
variable "vm_count" {
  type        = number
  description = "Set this to the no. of Virtual Machines to be deployed."
  default     = 0
}
variable "vm_prefix" {
  type        = string
  description = "Set this to the prefix to be used for VM Name. It will be appended with vm, osdisk etc. while creating the resources."
}
variable "vm_size" {
  type        = string
  description = "Set this to the size of the Virtual Machine. Refer https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sizes."
}
variable "vm_availability_set_id" {
  type        = string
  description = "Set this to the ID of the Availability Set in which the Virtual Machine should exist. Do not set this field if Availability Sets are not being used or if using Availability Zones."
  default     = null
}
variable "vm_delete_os_disk_on_termination" {
  type        = bool
  description = "Set this to True if the OS Disk should be deleted when the Virtual Machine is destroyed."
  default     = true
}
variable "vm_delete_data_disks_on_termination" {
  type        = bool
  description = "Set this to True if the Data Disks should be deleted when the Virtual Machine is destroyed."
  default     = true
}
variable "vm_os_disk_caching" {
  type        = string
  description = "Set this to the caching requirements for the OS Disk."
  default     = "ReadWrite"
}
variable "vm_os_disk_create_option" {
  type        = string
  description = "Set this to how the OS Disk should be created."
  default     = "FromImage"
}
variable "vm_os_disk_storage_account_type" {
  type        = string
  description = "Set this to the type of managed disk to create."
  default     = "Standard_LRS"
}
variable "vm_os_disk_size" {
  type        = number
  description = "Set this to the size of the OS Disk in gigabytes."
  default     = 128
}
variable "vm_agent" {
  type        = bool
  description = "Set this to True if Azure Virtual Machine Guest Agent should be installed on the Virtual Machine."
  default     = true
}
variable "vm_timezone" {
  type        = string
  description = "Set this to the time zone of the Virtual Machine to be created."
  default     = "Eastern Standard Time"
}
variable "vm_boot_diagnostics_enabled" {
  type        = bool
  description = "Set this to True if boot diagnostics need to be enabled on the Virtual Machine."
}
variable "vm_boot_diagnostics_storage_uri" {
  type        = string
  description = "Set this to the Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files."
}

# VM Image
variable "vm_image_publisher" {
  type        = string
  description = "Set this to the publisher of the image used to create the virtual machine."
  default     = "MicrosoftWindowsServer"
}
variable "vm_image_offer" {
  type        = string
  description = "Set this to the offer of the image used to create the virtual machine."
  default     = "WindowsServer"
}
variable "vm_image_sku" {
  type        = string
  description = "Set this to the SKU of the image used to create the virtual machine."
  default     = "2016-Datacenter"
}
variable "vm_image_version" {
  type        = string
  description = "Set this to the version of the image used to create the virtual machine."
  default     = "latest"
}

# VM Username and Password
variable "vm_admin_username" {
  type        = string
  description = "Set this to the name of the local administrator account on the VM."
}
variable "vm_admin_password" {
  type        = string
  description = "Set this to the password associated with the local administrator account on the VM."
}

#Managed Drives
variable "vm_data_disk_size_list" {
  type        = list
  description = "Set this to the list of sizes of the Data disks."
}
variable "vm_data_disk_storage_account_type" {
  type        = string
  description = "Set this to the type of managed disk to create."
  default     = "Standard_LRS"
}
variable "vm_data_disk_create_option" {
  type        = string
  description = "Set this to how the Data Disk should be created."
  default     = "Empty"
}
variable "vm_data_disk_caching" {
  type        = string
  description = "Set this to the caching requirements for the Data Disk."
  default     = "ReadWrite"
}