Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provision :shell, privileged: false,
                      name: "Generate ssh key for localhost-self",
                      path: "./vagrant/keygen-localhostself.sh"

  config.vm.provision :ansible_local,
                      playbook: "site.yml",
                      inventory_path: "local",
                      limit: "all"
end
