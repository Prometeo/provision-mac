.PHONY: help build up requirements clean lint test help

POST_MESSAGE=\033[0;32m************************************************************************************************************************\033[0m


help:
	@echo 'Provision a mac workstation'
	@echo ''
	@echo '  Options:'
	@echo '    provision       provision the workstation'
	@echo ''


provision:
	@echo "Running playbook ${POST_MESSAGE}"
	ansible-playbook -K provision.yaml -i inventory
