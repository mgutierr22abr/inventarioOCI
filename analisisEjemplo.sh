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
