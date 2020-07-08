#!/bin/bash
echo Regiones posibles de Revisar
oci iam region-subscription list | jq -r '.data[]."region-name"'
