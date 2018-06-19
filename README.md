# Ansible Playbook for ndxbn.tokyo
`ansible-playbook -i local playbook.yml` goes to build ndxbn.tokyo service on your machine!!
Or Try it temporary, do only `vagrant up` via [Vagrant](https://www.vagrantup.com/docs/).

## Requirements

- Linux
- Python 3

If you are Windows 10 user, you can use [Windows Subsystem for Linux](https://docs.microsoft.com/windows/wsl).

### Requirements for Developers

- Ruby 2.0 or later

## Using
### Basic Usage
**IMPORTANT: This will configuration and install on your localhost directory.**

If you don't want to install on your computer directory, you may use Vagrant. 

```bash
git clone https://github.com/ndxbn-tokyo/playbook
pushd playbook

pip install -r requirements.txt
ansible-playbook -i local playbook.yml 
```

## Directory Structure Philosophy
I think all files and/or directories which are used in CLI should be exists top of repository.   
If there are NOT on top, user must exec with long args. e.g.`ansible-playbook -i inventories/local site.yml`, "inventories/" may be verbose. I don't want to type it.

There are inventories directory, master playbook, and some configuration files on top of repository, you should not type sub-directory name in almost basic usage.

# Misc
## Tags

- `install`
  - `bootstrapping`
  - `configuration`
  - `orchestration`
- `update`

## Testing

```bash
bundle install
rake
```
