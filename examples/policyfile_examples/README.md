# policyfile_examples

Example of use cases for policyfiles with Chef Infra.

## Policyfile

There is a great deal of information on the [Chef Docs site](https://docs.chef.io/policyfile/) for policyfiles, however there are two distinct functions of a Policyfile based on the intent of the file and how it is used.

### Policyfile - Runtime for Nodes

Policyfiles are used as a replacement for legacy Roles, Environments and Node Run-Lists with Chef Infra, able to contain in a single file details for all of these functions and allowing creation of an immutable policy definition which will be applied to a system.  These Policyfiles are created with the intent of being used to determine the run-time configuration for Chef Infra Node targets, applied either via Policy Group from a Chef Infra Server or as a self-contained artifact.

### Policyfile - Cookbook Dependencies

Residing within a cookbook repository, Policyfiles can also act as dependency resolution and replacement of Berkshelf for a cookbook.  Typically these Policyfile objects which reside inside of a cookbook are _not_ used at scale to define runtime configurations for nodes, but are used by the containing cookbook to define definitions and create named_run_list items for Test Kitchen usage.

## Example Repo Contents

### Cookbook Repos

Multiple cookbook repos are configured under the [cookbook_repos](./cookbook_repos) path.  Typically in a real environment these would all be distinct Git repositories.

* Cookbooks `base_config`, `security_config` and `web_application` all have dependencies on `shared_components`.  Since `shared_components` is not in the public supermarket, Policyfiles in these cookbooks have lines showing how to resolve and obtain the `shared_components` cookbook.
* Cookbooks `base_config`, `security_config` and `web_application` have the boolean attribute `cookbook_enabled` under the cookbook's namespace.  This key is used in the `default` recipe for each cookbook to determine if the cookbook should run, with default values specified in the cookbook `attributes`.

### Policies

Multiple policies are defined under the [policyfiles](./policyfiles) path.

* __default_policy__ : This policy defines a simple run-list of `base_config` and has defined where to obtain the required cookbooks to complete this run-list since they are not published in the `default_source` location.

    ```plain
    $ chef install default_policy.rb
    Building policy default_policy
    Expanded run list: recipe[base_config::default]
    Caching Cookbooks...
    Installing shared_components >= 0.0.0 from path
    Installing base_config       >= 0.0.0 from path

    Lockfile written to /repo-location//policyfiles/default_policy.lock.json
    Policy revision id: 232fad2119bcd0ab8687407491956f93c016100c02dd23c5bdd4e8d16124027e
    ```

* __default_policy_with_security__ : Similar to the `default_policy` but also includes the `security_config` cookbook.

    ```plain
    $ chef install default_policy_with_security.rb                                                                                                                      [9:58:24]
    Building policy default_policy_with_security
    Expanded run list: recipe[base_config::default], recipe[security_config::default]
    Caching Cookbooks...
    Installing shared_components >= 0.0.0 from path
    Installing base_config       >= 0.0.0 from path
    Installing security_config   >= 0.0.0 from path

    Lockfile written to /repo-location//policyfiles/default_policy_with_security.lock.json
    Policy revision id: f8a7b41fdad70fbb1cce7883dbec97fe1d419b28fe8aa1517ea9b69ad5b4022c
    ```

* __webapp_policy__ : This policy would be used for systems that need to run the `web_application` cookbook.  It uses `include_policy` to include the `default_policy_with_security` policy and additionally configures

    ```plain
    $ chef install webapp_policy.rb                                                                                                                                     [9:59:22]
    Building policy webapp_policy
    Expanded run list: recipe[base_config::default], recipe[security_config::default], recipe[web_application::default]
    Caching Cookbooks...
    Installing web_application >= 0.0.0 from path
    Installing base_config       0.1.0
    Installing security_config   0.1.0
    Installing shared_components 0.1.0

    Lockfile written to /repo-location//policyfiles/webapp_policy.lock.json
    Policy revision id: dca3eca9c48442f88c13d7c3b2cfbf12e0ec2b8d5b1c0e7ab258dc0e67b482ec
    ```
