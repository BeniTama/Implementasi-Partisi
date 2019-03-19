Vagrant.configure("2") do |config|

(1..2).each do |i|
  config.vm.define "db#{i}" do |node|
    node.vm.box = "bento/ubuntu-18.04"
    node.vm.hostname = "db#{i}"
    node.vm.network "private_network", ip: "192.168.33.1#{i}"

    node.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "db#{i}"
      vb.memory = "512"
    end
	
    node.vm.provision "shell", path: "provision/db.sh", privileged: false
    end
  end
end
