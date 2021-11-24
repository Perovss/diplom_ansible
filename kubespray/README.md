# Установка Kubespay

1. pip3 install -r requirements.txt
2. ansible-playbook -i kubespray/inventory/diplom/inventory.ini kubespray/cluster.yml -e ansible_user=ubuntu -b --become-user=root

