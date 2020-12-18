data "oci_analytics_analytics_instances" "oci_analytics_analytics_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_analytics_analytics_instances" {
value = data.oci_analytics_analytics_instances.oci_analytics_analytics_instances
}
data "oci_apigateway_gateways" "oci_apigateway_gateways" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_apigateway_gateways" {
value = data.oci_apigateway_gateways.oci_apigateway_gateways
}
data "oci_autoscaling_auto_scaling_configurations" "oci_autoscaling_auto_scaling_configurations" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_autoscaling_auto_scaling_configurations" {
value = data.oci_autoscaling_auto_scaling_configurations.oci_autoscaling_auto_scaling_configurations
}
data "oci_bds_bds_instances" "oci_bds_bds_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_bds_bds_instances" {
value = data.oci_bds_bds_instances.oci_bds_bds_instances
}
data "oci_containerengine_clusters" "oci_containerengine_clusters" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_containerengine_clusters" {
value = data.oci_containerengine_clusters.oci_containerengine_clusters
}
data "oci_containerengine_node_pools" "oci_containerengine_node_pools" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_containerengine_node_pools" {
value = data.oci_containerengine_node_pools.oci_containerengine_node_pools
}
data "oci_core_cpes" "oci_core_cpes" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_cpes" {
value = data.oci_core_cpes.oci_core_cpes
}
data "oci_core_dedicated_vm_hosts" "oci_core_dedicated_vm_hosts" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_dedicated_vm_hosts" {
value = data.oci_core_dedicated_vm_hosts.oci_core_dedicated_vm_hosts
}
data "oci_core_images" "oci_core_images" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_images" {
value = data.oci_core_images.oci_core_images
}
data "oci_core_instance_pools" "oci_core_instance_pools" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_instance_pools" {
value = data.oci_core_instance_pools.oci_core_instance_pools
}
data "oci_core_instances" "oci_core_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
locals {
   insta = flatten( [ for j in data.oci_core_instances.oci_core_instances : [ for k in j : k.id ] ] )
}
data "oci_core_instance" "oci_core_instance" {
        count = length(local.insta)
	instance_id = local.insta[count.index]
}

data "oci_core_nat_gateways" "oci_core_nat_gateways" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_nat_gateways" {
value = data.oci_core_nat_gateways.oci_core_nat_gateways
}
data "oci_core_vcns" "oci_core_vcns" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_vcns" {
value = data.oci_core_vcns.oci_core_vcns
}
data "oci_core_volume_backups" "oci_core_volume_backups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_volume_backups" {
value = data.oci_core_volume_backups.oci_core_volume_backups
}
data "oci_core_volume_group_backups" "oci_core_volume_group_backups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_volume_group_backups" {
value = data.oci_core_volume_group_backups.oci_core_volume_group_backups
}
data "oci_core_volume_groups" "oci_core_volume_groups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_volume_groups" {
value = data.oci_core_volume_groups.oci_core_volume_groups
}
data "oci_core_volumes" "oci_core_volumes" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_core_volumes" {
value = data.oci_core_volumes.oci_core_volumes
}
data "oci_database_autonomous_databases" "oci_database_autonomous_databases" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_database_autonomous_databases" {
value = data.oci_database_autonomous_databases.oci_database_autonomous_databases
}
data "oci_database_db_systems" "oci_database_db_systems" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_database_db_systems" {
value = data.oci_database_db_systems.oci_database_db_systems
}
/*
data "oci_datacatalog_catalogs" "oci_datacatalog_catalogs" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_datacatalog_catalogs" {
value = data.oci_datacatalog_catalogs.oci_datacatalog_catalogs
}
*/
data "oci_dataflow_applications" "oci_dataflow_applications" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_dataflow_applications" {
value = data.oci_dataflow_applications.oci_dataflow_applications
}
data "oci_dataintegration_workspaces" "oci_dataintegration_workspaces" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_dataintegration_workspaces" {
value = data.oci_dataintegration_workspaces.oci_dataintegration_workspaces
}
data "oci_datascience_projects" "oci_datascience_projects" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_datascience_projects" {
value = data.oci_datascience_projects.oci_datascience_projects
}
data "oci_dns_steering_policies" "oci_dns_steering_policies" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_dns_steering_policies" {
value = data.oci_dns_steering_policies.oci_dns_steering_policies
}
data "oci_dns_zones" "oci_dns_zones" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_dns_zones" {
value = data.oci_dns_zones.oci_dns_zones
}
data "oci_email_senders" "oci_email_senders" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_email_senders" {
value = data.oci_email_senders.oci_email_senders
}
data "oci_email_suppressions" "oci_email_suppressions" {
	compartment_id = var.tenancy_ocid
}
output "oci_email_suppressions" {
value = data.oci_email_suppressions.oci_email_suppressions
}
data "oci_events_rules" "oci_events_rules" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_events_rules" {
value = data.oci_events_rules.oci_events_rules
}
data "oci_functions_applications" "oci_functions_applications" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_functions_applications" {
value = data.oci_functions_applications.oci_functions_applications
}
data "oci_integration_integration_instances" "oci_integration_integration_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_integration_integration_instances" {
value = data.oci_integration_integration_instances.oci_integration_integration_instances
}
data "oci_kms_vaults" "oci_kms_vaults" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_kms_vaults" {
value = data.oci_kms_vaults.oci_kms_vaults
}
data "oci_load_balancer_load_balancers" "oci_load_balancer_load_balancers" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_load_balancer_load_balancers" {
value = data.oci_load_balancer_load_balancers.oci_load_balancer_load_balancers
}
data "oci_monitoring_alarms" "oci_monitoring_alarms" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_monitoring_alarms" {
value = data.oci_monitoring_alarms.oci_monitoring_alarms
}
data "oci_mysql_mysql_backups" "oci_mysql_mysql_backups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_mysql_mysql_backups" {
value = data.oci_mysql_mysql_backups.oci_mysql_mysql_backups
}
data "oci_mysql_mysql_db_systems" "oci_mysql_mysql_db_systems" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_mysql_mysql_db_systems" {
value = data.oci_mysql_mysql_db_systems.oci_mysql_mysql_db_systems
}
data "oci_nosql_tables" "oci_nosql_tables" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_nosql_tables" {
value = data.oci_nosql_tables.oci_nosql_tables
}
/*data "oci_oce_oce_instances" "oci_oce_oce_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_oce_oce_instances" {
value = data.oci_oce_oce_instances.oci_oce_oce_instances
}*/
data "oci_ocvp_sddcs" "oci_ocvp_sddcs" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_ocvp_sddcs" {
value = data.oci_ocvp_sddcs.oci_ocvp_sddcs
}
data "oci_oda_oda_instances" "oci_oda_oda_instances" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_oda_oda_instances" {
value = data.oci_oda_oda_instances.oci_oda_oda_instances
}
data "oci_ons_notification_topics" "oci_ons_notification_topics" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_ons_notification_topics" {
value = data.oci_ons_notification_topics.oci_ons_notification_topics
}
/*data "oci_osmanagement_managed_instance_groups" "oci_osmanagement_managed_instance_groups" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_osmanagement_managed_instance_groups" {
value = data.oci_osmanagement_managed_instance_groups.oci_osmanagement_managed_instance_groups
}*/
data "oci_resourcemanager_stacks" "oci_resourcemanager_stacks" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_resourcemanager_stacks" {
value = data.oci_resourcemanager_stacks.oci_resourcemanager_stacks
}
data "oci_streaming_streams" "oci_streaming_streams" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_streaming_streams" {
value = data.oci_streaming_streams.oci_streaming_streams
}
data "oci_vault_secrets" "oci_vault_secrets" {
        count = length(local.compa)
	compartment_id = local.compa[count.index]
}
output "oci_vault_secrets" {
value = data.oci_vault_secrets.oci_vault_secrets
}
