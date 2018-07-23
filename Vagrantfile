Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.disksize.size = "250GB"

  config.vm.provision :ansible_local,
                      playbook: "site.yml",
                      inventory_path: "local",
                      limit: "all",
                      raw_arguments: "--connection=local"
end
