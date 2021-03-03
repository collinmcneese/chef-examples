# Chef Examples

A collection of HowTo Chef examples to help you figure out how to do _that thing you really want to do_ with Chef, Habitat, InSpec and anything else Chef-related. This repo is maintained by Chef, however, feel free to request examples, or file PR's to provide examples to the Chef Community.

Note: USE AT YOUR OWN RISK!

## Automate

- [Setting Up SAML Auth in Automate with Okta](./examples/A2SamlWithOkta.md)
- [Creating a Cookbook Pipeline Using Azure DevOps](./examples/AzureDevOpsCookbookPipeline.md)
- [Set up Automate + Chef Infra Server to use RDS Aurora Postgres + AWS Elastisearch Service Backends](./examples/a2-aws-backends/a2-aws-backends.md)
- [Setup Automate with Let's Encrypt SSL Cert](./examples/A2WithLetsEncryptSSLCert.md)
- [Automate SAML with AzureAD](./examples/A2SamlWithAzureAD.md)
- [Grant Access to Applications Dashboard](./examples/A2GrantAppDashboardAccess.md)
- [Ruby Automate API script for reporting last node checkins](./examples/a2-api/README.md#checkinsrb)
- [Ruby Automate API script for reporting node counts by Chef Infra Servers, organizations, and status](./examples/a2-api/README.md#node_countrb)
- [Ruby Automate API script for exporting latest audits with filtering](./examples/a2-api/README.md#audit_reportsrb)
- [Ruby Nodes and Event Report, Accepting Values At The Command Line](./examples/a2-api/nodes_and_events_reporter.rb)

## Infra

- [Example Policyfile usage](./examples/policyfile_examples/README.md)
- [HowTo download then upload all Chef Cookbooks from one Chef Server to another](./examples/DownloadUploadCookbooks.md)
- [Role Cookbook Model Explained](./examples/RoleCookbookModel.md)
- [HowTo bootstrap an Azure VM using an ARM template & Policyfiles](./examples/AzureArmChefClientBootstrap/README.md)
- [HowTo create and test local Encrypted Data Bags using Test Kitchen](./examples/ChefTestKitchenEncryptedDataBags.md)
- [Running Multiple Versions of Chef Workstation/DK from a Docker Container](./examples/docker-ops/README.md)

## InSpec

- [Inspec example of checking Netbios configuration on Windows](./examples/InspecNetBiosQuery.md)
- [Inspec example of verifying Local Administrators on Windows](./examples/InSpecVerifyWindowsAdministrators.md)

## Habitat

- [Habitat Builder with S3 and RDS](./examples/HabitatBuilderWithS3RDS.md)

## Start Environments

- [Vagrant - Chef Infra Server](./examples/vagrant/chef-server/README.md)
- [Vagrant - Chef Node](./examples/vagrant/chef-node/README.md)
- [Vagrant - Starter Environment](./examples/vagrant/starter-environment/README.md)

## Other

- [Writing Basic Cookstyle Rules](./examples/WorkstationWriteBasicCookstyle.md)
- [Example Pipelines](./examples/pipelines/PipelineOverview.md)
- [Test Kitchen](./examples/test-kitchen/README.md)
- [Technical Reviews](./technical-reviews/README.md)

### Contributing

1. Verify if there is a current "Example Request" issue for what you are
going to be adding content for, if not, add a new issue so it's not duplicated.
1. Fork this repo.
1. Create a named example branch (e.g. example_xyz).
1. Using the [HowTo](./HowToTemplate.md) template, write your new HowTo example.
1. Submit a Pull Request, and request review.
