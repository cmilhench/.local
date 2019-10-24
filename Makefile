
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
.PHONY: help

ssh-config: ## Generate ssh config for easy hostname access to digita locean machines
	@doctl compute droplet list --no-header --format Name,PublicIPv4 | grep -v discour[cs]e | awk '{print "Host " $$1 "\n HostName " $$2 "\n User root\n"}'
.PHONY: ssh-config

ssh-keys: ## Retrieve public ssh keys
	@curl -sf https://github.com/cmilhench.keys
.PHONY: ssh-keys

install-ssh-keys: ## Install/Append public ssh keys to REMOTE server 
	@make ssh-keys | ssh REMOTE 'umask 0077; mkdir -p .ssh; cat >> .ssh/authorized_keys'
.PHONY: install-ssh-keys

