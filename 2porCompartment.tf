data "oci_analytics_analytics_instances" "oci_analytics_analytics_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_apigateway_gateways" "oci_apigateway_gateways" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_autoscaling_auto_scaling_configurations" "oci_autoscaling_auto_scaling_configurations" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_bds_bds_instances" "oci_bds_bds_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_containerengine_clusters" "oci_containerengine_clusters" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_containerengine_node_pools" "oci_containerengine_node_pools" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_cpes" "oci_core_cpes" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_dedicated_vm_hosts" "oci_core_dedicated_vm_hosts" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_images" "oci_core_images" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_instance_pools" "oci_core_instance_pools" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_instances" "oci_core_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
locals {
   inst0 = [ for k in data.oci_core_instances.oci_core_instances[*] : k.instances ]
   insta = flatten( [ for j in local.inst0 : [ for k in j : k.id ] ] )
}
output "i" {
   value = local.insta
}
data "oci_core_instance" "oci_core_instance" {
        count = length(local.insta)
        instance_id = local.insta[count.index]
}
output "resumen" {
value = data.oci_core_instance.oci_core_instance
}

data "oci_core_nat_gateways" "oci_core_nat_gateways" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_vcns" "oci_core_vcns" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_volume_backups" "oci_core_volume_backups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_volume_group_backups" "oci_core_volume_group_backups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_volume_groups" "oci_core_volume_groups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_core_volumes" "oci_core_volumes" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_database_autonomous_databases" "oci_database_autonomous_databases" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_database_db_systems" "oci_database_db_systems" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
/*
data "oci_datacatalog_catalogs" "oci_datacatalog_catalogs" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
*/
data "oci_dataflow_applications" "oci_dataflow_applications" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_dataintegration_workspaces" "oci_dataintegration_workspaces" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_datascience_projects" "oci_datascience_projects" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_dns_steering_policies" "oci_dns_steering_policies" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_dns_zones" "oci_dns_zones" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_email_senders" "oci_email_senders" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_email_suppressions" "oci_email_suppressions" {
	compartment_id = var.tenancy_ocid
}
data "oci_events_rules" "oci_events_rules" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_functions_applications" "oci_functions_applications" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_integration_integration_instances" "oci_integration_integration_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_kms_vaults" "oci_kms_vaults" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_load_balancer_load_balancers" "oci_load_balancer_load_balancers" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_monitoring_alarms" "oci_monitoring_alarms" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_mysql_mysql_backups" "oci_mysql_mysql_backups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_mysql_mysql_db_systems" "oci_mysql_mysql_db_systems" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_nosql_tables" "oci_nosql_tables" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
/*
data "oci_oce_oce_instances" "oci_oce_oce_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
*/
data "oci_ocvp_sddcs" "oci_ocvp_sddcs" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_oda_oda_instances" "oci_oda_oda_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_ons_notification_topics" "oci_ons_notification_topics" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
/*data "oci_osmanagement_managed_instance_groups" "oci_osmanagement_managed_instance_groups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
*/
data "oci_resourcemanager_stacks" "oci_resourcemanager_stacks" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_streaming_streams" "oci_streaming_streams" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
data "oci_vault_secrets" "oci_vault_secrets" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}

