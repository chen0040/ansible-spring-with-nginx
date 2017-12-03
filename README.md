# ansible-spring-with-nginx

Sample project showing how to use ansible to configure nginx to serve as reverse proxy for spring application

# Install

### If you are using Windows or Mac Host Computer

If you are on a Windows or Mac host computer, then git clone this project and run the following command after cd the project root directory (make sure you have Vagrant installed):

```bash
vagrant up
```

The vagrant setup will create a CentOS 7.4 VMs with nginx and ansible as well as java 8 installed. It will also copy the nginx.conf from the "devops" folder to the /etc/nginx (to setup configuration such that the nginx server will point to the backend servers running at localhost:8080 and localhost:8081)

Now to work with nginx and ansible in the CentOS VM, run the following command:

```bash
vagrant ssh
```

### If you are using Linux host computer

If you are using linux host computer, you can git clone this project and run the following command after cd to the project root directory:

```bash
cd devops
./setup_env.sh
```

This will also installed nginx and ansible and java 8. It will also copy the nginx.conf from the "devops" folder to the /etc/nginx (to setup configuration such that the nginx server will point to the backend servers running at localhost:8080 and localhost:8081)

# Usage

Run the following command to start the backend servers implemented in spring-boot and restart the nginx server as well:

```bash
cd devops
ansible-playbook start.yml -i app.inventory
```

The script will start the backend-one.jar and backend-two.jar at the localhost:8080 and localhost:8081, as well as restart the nginx server.
The backend servers backend-one.jar and backend-two.jar are from the [spring-boot-slingshot](https://github.com/chen0040/spring-boot-slingshot.git) project

The following command will stop the spring backend servers as well as the nginx server:

```bash
cd devops 
ansible-playbook start.yml -i app.inventory 
```









