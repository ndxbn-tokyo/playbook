Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.disksize.size = "250GB"

  config.vm.synced_folder ".", "/vagrant",
                          id: "ansible",
                          owner: "ubuntu",
                          group: "ubuntu",
                          mount_options: ["dmode=775,fmode=664"]

  config.vm.provision :ansible_local,
                      playbook: "site.yml",
                      inventory_path: "local",
                      limit: "all",
                      galaxy_role_file: "requirements.yml",
                      galaxy_roles_path: "galaxy_roles",
                      raw_arguments: "--connection=local"
end
