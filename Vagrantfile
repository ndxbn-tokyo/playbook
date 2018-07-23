Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.disksize.size = "250GB"

  config.vm.provision :ansible_local,
                      playbook: "site.yml",
                      inventory_path: "local",
                      config_file: "ansible.cfg",
                      limit: "all",
                      galaxy_role_file: "requirements.yml",
                      galaxy_roles_path: "galaxy_roles",
                      raw_arguments: "--connection=local"
end
