# Ansible Playbook for ndxbn.tokyo
`ansible-playbook -i local playbook.yml` goes to build ndxbn.tokyo service on your machine!!
Or Try it temporary, do only `vagrant up` via [Vagrant](https://www.vagrantup.com/docs/).

## Requirements

- Linux
- Python 3
- pip

If you are Windows 10 user, you can use [Windows Subsystem for Linux](https://docs.microsoft.com/windows/wsl).

## Using
### Basic Usage
**IMPORTANT: This will configuration and install on your localhost directory.**

If you don't want to install on your computer directory, you may use Vagrant. 

```bash
git clone https://github.com/ndxbn-tokyo/playbook
pushd playbook

pip install -r requirements.txt
ansible-galaxy install --roles-path galaxy_roles -r requirements.yml
ansible-playbook -c local -i local playbook.yml
```

### With Vagrant

```bash
vagrant plugin install vagrant-disksize
vagrant up
```

# For Developers
## Tags

- `install`
  - `bootstrapping`
  - `configuration`
  - `orchestration`
- `update`
