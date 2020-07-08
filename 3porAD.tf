data "oci_core_boot_volumes" "oci_core_boot_volumes" {
    count = length(local.compa) * length(local.adomain)
    compartment_id = local.compa[(count.index - count.index % length(local.adomain)) / length(local.adomain)]
    availability_domain = local.adomain[count.index % length(local.adomain)]
}
output "oci_core_boot_volumes" {
value = data.oci_core_boot_volumes.oci_core_boot_volumes
}
data "oci_file_storage_file_systems" "oci_file_storage_file_systems" {
    count = length(local.compa) * length(local.adomain)
    compartment_id = local.compa[(count.index - count.index % length(local.adomain)) / length(local.adomain)]
    availability_domain = local.adomain[count.index % length(local.adomain)]
}
output "oci_file_storage_file_systems" {
value = data.oci_file_storage_file_systems.oci_file_storage_file_systems
}
data "oci_file_storage_mount_targets" "oci_file_storage_mount_targets" {
    count = length(local.compa) * length(local.adomain)
    compartment_id = local.compa[(count.index - count.index % length(local.adomain)) / length(local.adomain)]
    availability_domain = local.adomain[count.index % length(local.adomain)]
}
output "oci_file_storage_mount_targets" {
value = data.oci_file_storage_mount_targets.oci_file_storage_mount_targets
}
