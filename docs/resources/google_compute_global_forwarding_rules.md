---
title: About the google_compute_global_forwarding_rules resource
platform: gcp
---

## Syntax
A `google_compute_global_forwarding_rules` is used to test a Google GlobalForwardingRule resource

## Examples
```
describe google_compute_global_forwarding_rules(project: 'chef-gcp-inspec') do
  its('count') { should be >= 1 }
  its('port_ranges') { should include '80-80' }
end
```

## Properties
Properties that can be accessed from the `google_compute_global_forwarding_rules` resource:

See [google_compute_global_forwarding_rule.md](google_compute_global_forwarding_rule.md) for more detailed information
  * `creation_timestamps`: an array of `google_compute_global_forwarding_rule` creation_timestamp
  * `descriptions`: an array of `google_compute_global_forwarding_rule` description
  * `ids`: an array of `google_compute_global_forwarding_rule` id
  * `ip_addresses`: an array of `google_compute_global_forwarding_rule` ip_address
  * `ip_protocols`: an array of `google_compute_global_forwarding_rule` ip_protocol
  * `ip_versions`: an array of `google_compute_global_forwarding_rule` ip_version
  * `load_balancing_schemes`: an array of `google_compute_global_forwarding_rule` load_balancing_scheme
  * `metadata_filters`: an array of `google_compute_global_forwarding_rule` metadata_filters
  * `names`: an array of `google_compute_global_forwarding_rule` name
  * `networks`: an array of `google_compute_global_forwarding_rule` network
  * `port_ranges`: an array of `google_compute_global_forwarding_rule` port_range
  * `targets`: an array of `google_compute_global_forwarding_rule` target

## Filter Criteria
This resource supports all of the above properties as filter criteria, which can be used
with `where` as a block or a method.

## GCP Permissions

Ensure the [Compute Engine API](https://console.cloud.google.com/apis/library/compute.googleapis.com/) is enabled for the current project.
