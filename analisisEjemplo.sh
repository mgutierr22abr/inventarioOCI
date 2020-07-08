#!/bin/bash
if [ a$1 == a ]; then
	T=terraform.tfstate
else
	T=$1
fi
echo "############## tenancy"
cat $T | jq -r '.outputs.tenancy.value.name'
echo "############## AD"
cat $T | jq -r '.outputs.ads.value.availability_domains[].name'
echo "############## compartments activos "
cat $T | jq -r '.outputs.compartments.value.compartments[] | select( .state == "ACTIVE" ) | .name'
echo "############## computo"
cat $T | jq -r '.outputs.oci_core_instances.value[].instances[] | .display_name+" "+.region+" "+.availability_domain+" "+.shape+" "+.state'
echo "############## db-system"
cat $T | jq '.outputs.oci_database_db_systems.value[].db_systems[] | .display_name+" "+.availability_domain+" "+.shape+" "+(.node_count|tostring)+" "+(.data_storage_size_in_gb|tostring)+" "+.database_edition'
