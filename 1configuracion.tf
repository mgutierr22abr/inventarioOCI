data "oci_identity_tenancy" "tenancy" {
        tenancy_id = "${var.tenancy_ocid}"
}
output "tenancy" {
value = data.oci_identity_tenancy.tenancy
}
/******************************************************/
data "oci_identity_availability_domains" "ads" {
  compartment_id = "${var.tenancy_ocid}"
}
output "ads" {
value = data.oci_identity_availability_domains.ads
}
/******************************************************/
data "oci_identity_compartments" "compartments" {
        compartment_id = "${var.tenancy_ocid}"
        access_level = "ANY"
        compartment_id_in_subtree = true
}
output "compartments" {
value = data.oci_identity_compartments.compartments
}
/******************************************************/
locals {
compa = "${[for x in data.oci_identity_compartments.compartments.compartments : x.id if x.state == "ACTIVE"] }"
adomain = "${[for x in data.oci_identity_availability_domains.ads.availability_domains : x.name ] }"
}
