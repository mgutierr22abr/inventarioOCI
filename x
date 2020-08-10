{
    "backend-sets": {
      "TCP-443": {
        "backends": [
          {
            "backup": false,
            "drain": false,
            "ip-address": "10.0.22.235",
            "name": "10.0.22.235:32047",
            "offline": false,
            "port": 32047,
            "weight": 1
          }
        ],
        "health-checker": {
          "interval-in-millis": 10000,
          "port": 10256,
          "protocol": "HTTP",
          "response-body-regex": ".*",
          "retries": 3,
          "return-code": 200,
          "timeout-in-millis": 3000,
          "url-path": "/healthz"
        },
        "lb-cookie-session-persistence-configuration": null,
        "name": "TCP-443",
        "policy": "ROUND_ROBIN",
        "session-persistence-configuration": null,
        "ssl-configuration": null
      },
      "TCP-80": {
        "backends": [
          {
            "backup": false,
            "drain": false,
            "ip-address": "10.0.22.235",
            "name": "10.0.22.235:31107",
            "offline": false,
            "port": 31107,
            "weight": 1
          }
        ],
        "health-checker": {
          "interval-in-millis": 10000,
          "port": 10256,
          "protocol": "HTTP",
          "response-body-regex": ".*",
          "retries": 3,
          "return-code": 200,
          "timeout-in-millis": 3000,
          "url-path": "/healthz"
        },
        "lb-cookie-session-persistence-configuration": null,
        "name": "TCP-80",
        "policy": "ROUND_ROBIN",
        "session-persistence-configuration": null,
        "ssl-configuration": null
      }
    },
    "certificates": {},
    "compartment-id": "ocid1.compartment.oc1..aaaaaaaa7ueohzih5yhxfzdo3z5wsvzcu5dulsbm44ze26544adap5ekozsq",
    "defined-tags": {},
    "display-name": "9ab4325a-47ac-4dda-a99f-a40a03fb97a2",
    "freeform-tags": {},
    "hostnames": {},
    "id": "ocid1.loadbalancer.oc1.phx.aaaaaaaa5t3dxpyrspdcokqywghgqvuhcc2qfngq5plfydigw2kqjoniiyaq",
    "ip-addresses": [
      {
        "ip-address": "129.146.197.224",
        "is-public": true
      }
    ],
    "is-private": false,
    "lifecycle-state": "ACTIVE",
    "listeners": {
      "TCP-443": {
        "connection-configuration": {
          "backend-tcp-proxy-protocol-version": null,
          "idle-timeout": 300
        },
        "default-backend-set-name": "TCP-443",
        "hostname-names": null,
        "name": "TCP-443",
        "path-route-set-name": null,
        "port": 443,
        "protocol": "TCP",
        "rule-set-names": [],
        "ssl-configuration": null
      },
      "TCP-80": {
        "connection-configuration": {
          "backend-tcp-proxy-protocol-version": null,
          "idle-timeout": 300
        },
        "default-backend-set-name": "TCP-80",
        "hostname-names": null,
        "name": "TCP-80",
        "path-route-set-name": null,
        "port": 80,
        "protocol": "TCP",
        "rule-set-names": [],
        "ssl-configuration": null
      }
    },
    "network-security-group-ids": [],
    "path-route-sets": {},
    "rule-sets": {},
    "shape-name": "100Mbps",
    "ssl-cipher-suites": {},
    "subnet-ids": [
      "ocid1.subnet.oc1.phx.aaaaaaaa3nrgzattp652iyvd4jff3vap5xaddnnpr44dgsr2pbgyetwqfqga"
    ],
    "system-tags": {},
    "time-created": "2020-07-20T17:01:33.975000+00:00"
  }
