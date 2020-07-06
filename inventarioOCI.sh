#!/bin/bash
oci iam region-subscription list | jq -r '.[] | .[] | ."region-name"' > /tmp/inventario.r.txt
for i in $(cat /tmp/inventario.r.txt); do
	oci iam availability-domain list --region $i > /tmp/inventario.ad.$i.json
done
oci iam compartment list --compartment-id-in-subtree true --lifecycle-state ACTIVE | jq -r '.[] | .[] | .id' > /tmp/inventario.c.txt
for c in $(cat /tmp/inventario.c.txt); do
	for i in $(cat /tmp/inventario.r.txt); do
		echo $i $c
		oci autoscaling configuration list --compartment-id $c --region $i
		oci bds instance list --compartment-id $c --region $i
		oci compute instance list --compartment-id $c --region $i
		oci compute-management instance-configuration list --compartment-id $c --region $i
		oci compute-management instance-pool list --compartment-id $c --region $i
		oci db autonomous-database list --compartment-id $c --region $i
		oci db autonomous-database-backup list --compartment-id $c --region $i
		oci db backup list --compartment-id $c --region $i
		oci db system list --compartment-id $c --region $i
		oci dns zone list --compartment-id $c --region $i
		oci email sender list --compartment-id $c --region $i
		oci fn application list --compartment-id $c --region $i
		oci health-checks http-monitor list --compartment-id $c --region $i
		oci health-checks ping-monitor list --compartment-id $c --region $i
 		oci lb load-balancer list --compartment-id $c --region $i
		oci monitoring alarm list --compartment-id $c --region $i
		oci monitoring metric list --compartment-id $c --region $i
		oci network drg list --compartment-id $c --region $i
		oci network nat-gateway list --compartment-id $c --region $i
 		oci network public-ip list --scope REGION --compartment-id $c --region $i
 		oci network remote-peering-connection list --compartment-id $c --region $i 
 		oci network vcn list --compartment-id $c --region $i 
		oci network virtual-circuit list --compartment-id $c --region $i
		oci oce oce-instance list --compartment-id $c --region $i
		oci oda instance list --compartment-id $c --region $i
		oci ons subscription list --compartment-id $c --region $i
		oci ons topic list --compartment-id $c --region $i
		oci os bucket list --compartment-id $c --region $i
		oci streaming admin stream list --compartment-id $c --region $i
		oci waas waas-policy list --compartment-id $c --region $i
		oci work-requests work-request list --compartment-id $c --region $i
		for ad in $(cat /tmp/inventario.ad.$i.json | jq -r '.[] | .[] | .name'); do
			oci fs mount-target list --availability-domain $ad --compartment-id $c --region $i
			oci fs file-system list --availability-domain $ad --compartment-id $c --region $i
		done
	done
done
