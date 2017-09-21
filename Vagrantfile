# -*- mode: ruby -*-
# dont forget to install plugin
# vagrant plugin install vagrant-vbguest

Vagrant.configure("2") do |config|
	config.ssh.insert_key = true
	#config.vm.synced_folder '.', '/vagrant', type: 'nfs'

	# `vagrant up virtualbox --provider=virtualbox`
	config.vm.define "virtualbox" do |virtualbox|
		virtualbox.vm.hostname = "centos7.kiltum.tech"
		#virtualbox.vm.box = "kiltum/centos7"
		virtualbox.vm.box = "file://builds/virtualbox-centos7.box"
		virtualbox.vm.network :private_network, ip: "192.168.3.5"
		config.ssh.username = "ansible"
		config.ssh.password = "ansible"
		config.vm.provider :virtualbox do |v|
			v.gui = false
			v.memory = 1024
			v.cpus = 1
			v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
			v.customize ["modifyvm", :id, "--ioapic", "on"]
		end
		ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
		config.vm.provision 'shell', inline: "echo #{ssh_pub_key} >> /home/ansible/.ssh/authorized_keys", privileged: false
		config.vm.provision "shell", inline: "echo Master, your box is ready"
	end

end
