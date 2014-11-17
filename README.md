# Cake-It

## Get delicious homemade cakes delivered instantly.

This is a product being built by the Assembly community. You can help push this idea forward by visiting [https://assembly.com/cake-it](https://assembly.com/cake-it).

### How Assembly Works

Assembly products are like open-source and made with contributions from the community. Assembly handles the boring stuff like hosting, support, financing, legal, etc. Once the product launches we collect the revenue and split the profits amongst the contributors.

Visit [https://assembly.com](https://assembly.com) to learn more.

## Contribute

### Step 1: Install [Vagrant](https://www.vagrantup.com/)

Vagrant configures a development environment inside of a virtual machine on your development machine. 

Vagrant is easy to install.  Just follow the [instructions](https://docs.vagrantup.com/v2/installation/index.html)

### Step 2: Get the code
 
clone the [cake-it-web repo](https://github.com/asm-products/cake-it-web)

### Step 3: Setup your development environment with Vagrant

1. Change into the root directory of the cake-it-web code base.  You will see a file named Vagrantfile.  The Vagrantfile contains the instructions that Vagrant will use to create your development environment.  You do **not** need to do anything with this file.
2. Run the "vagrant up" command.  This will take several minutes so grab a coffee.  You will have a virtual machine running on your local machine when this completes.  This will be a fully functionial development environment.
3. Use the "vagrant ssh" to ssh into the shell of the vm.  You will be logged in as the user "vagrant".  The vagrant box shares a folder with the host OS accessible at "/vagrant".  Try running "ls -l /vagrant" from the shell of your vagrant box.  You will see the cake-it-web codebase that you cloned to your host OS.

### Step 4: Install Ruby 2.1.3 and Rails

1. Change into the /vagrant directory within the vagrant shell.  "cd /vagrant"
2. Run `curl -sSL https://get.rvm.io | bash -s stable --ruby=2.1.3` to install RVM.
2. Run `rvm install ruby-2.1.3` to install Ruby 2.1.3.
3. Install Bundler with `gem install bundler`.
4. Configure your environment using the Gemfile with `bundle install`.
5. Sometimes Bundler might give an error saying that "an error occurred while installing pg". In that case, simply run `gem install pg` and then run step 4 again.

### Step 5: Run the application server

1. Execute the command "rails server" to start the app server.
2. Visit localhost:4567 in your web browser.  You should see the cake-it-web application running
