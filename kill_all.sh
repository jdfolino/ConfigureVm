az vm list --resource-group linux-machine_group | jq '.[].name' | xargs az vm deallocate --resource-group linux-machine_group --name
