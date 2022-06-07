# Mongodb

## Summary
- The sample application has the ability to connect to a database. We need to provision our development environment with a vm for the app and one for the database.
- Vagrant is capable of running two or more virtual machines at once with different configurations.

## Tasks
- Add a second virtual machine called "db" to your Vagrant file
- Configure the db machine with a different IP from the app
- Provision the db machine with a MongoDB database
- Automate this task
	

## Creating a multi machine vagrant environment
- Multiple machines are defined within the same project Vagrantfile using the config.vm.define method call.
- This configuration directive creates a Vagrant configuration within a configuration.
- For example, in this situation:
````
Vagrant.configure("2") do |config|

	config.vm.define "app" do |app|
	app.vm.hostname = "app"
	app.vm.box = "ubuntu/xenial64"
	app.vm.network "private_network", ip: "192.168.10.100"
	app.vm.synced_folder ".", "/vagrant"
	# app.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant/new_default", run: "always"
	app.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant./provision.sh", run: "always"

	end

	
  	config.vm.define "db" do |db|
	db.vm.hostname = "db"
    	db.vm.box = "ubuntu/xenial64"
	db.vm.network "private_network", ip: "192.168.10.150"

	end
    	
  end

````
## Provision the DB machine
- Create another provision.sh file, this time for the database
`` db.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant./provision2.sh", run: "always" ``
