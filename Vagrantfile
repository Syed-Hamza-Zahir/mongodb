Vagrant.configure("2") do |config|

	config.vm.define "db" do |db|
	db.vm.hostname = "db"
    	db.vm.box = "ubuntu/xenial64"
	db.vm.network "private_network", ip: "192.168.10.150"
	db.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant./provision2.sh", run: "always"

	end

	config.vm.define "app" do |app|
	app.vm.hostname = "app"
	app.vm.box = "ubuntu/xenial64"
	app.vm.network "private_network", ip: "192.168.10.100"
	app.vm.synced_folder ".", "/vagrant"
	# app.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant/new_default", run: "always"
	app.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant./provision.sh", run: "always"

	end

	
  	
    	
  end
