# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

title 'Test GCP google_container_regional_cluster resource.'

gcp_project_id = attribute(:gcp_project_id, default: 'gcp_project_id', description: 'The GCP project identifier.')
gcp_location = attribute(:gcp_location, default: 'gcp_location', description: 'The GCP project region.')
regional_cluster = attribute('regional_cluster', default: {
  "name": "inspec-gcp-regional-cluster",
  "initial_node_count": 1
}, description: 'Regional container cluster definition')
control 'google_container_regional_cluster-1.0' do
  impact 1.0
  title 'google_container_regional_cluster resource test'

  describe google_container_regional_cluster(project: gcp_project_id, location: gcp_location, name: regional_cluster['name']) do
    it { should exist }
    its('initial_node_count') { should eq regional_cluster['initial_node_count']}
    its('location') { should eq gcp_location}
  end

  describe google_container_regional_cluster(project: gcp_project_id, location: gcp_location, name: 'nonexistent') do
    it { should_not exist }
  end
end
