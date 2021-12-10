SRC_CODE_BASE_DIR="/Users/jarrodfolino"
SUDO_PASSWORD="M@ven1983"

function deploy_code_server {
    cd "${SRC_CODE_BASE_DIR}/Devops/ConfigureVm"
    ansible-playbook "${SRC_CODE_BASE_DIR}/Devops/ConfigureVm/playbook.yaml" --inventory \
    "${SRC_CODE_BASE_DIR}/Devops/ConfigureVm/ansible_hosts_inventory" \
    --extra-vars "ansible_sudo_pass=${SUDO_PASSWORD}"
}

