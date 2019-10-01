in aws ubuntu box: assume python3 installed already
$ sudo apt-get update
$ sudo apt-get install python3-pip
### in project,to create requirements.txt, to do this:
$ pip3 free > requirements.txt
### then to install all dependencies,
$ pip3 install requirements.txt

### to enable the port used in flask, for example 8831, in aws:
### open the security group which assigned to the aws instance, add the inbound rule with port 8831 and save

to set python3.6 as default if both 3.4 and 3.6 installed, to do the following:
$ sudo update-alternatives --config python
### Will show you an error:
$ update-alternatives: error: no alternatives for python3
### You need to update your update-alternatives , then you will be able to set your default python version.
$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.4 1
$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2
### Then run :
$ sudo update-alternatives --config python
### Set python3.6 as default.
### Or use the following command to set python3.6 as default:
$ sudo update-alternatives  --set python /usr/bin/python3.6


which

##01. upgrade python2 to python3 in to aws linux box
#connect to box, do yum update
$ sudo yum update
#check python
$ python --version
#if version 3 not installed, do it
$ sudo yum install python3 -y
$ sudo apt install python3
#use the which command to confirm that the install was successful.
$ which python3
#in order to use the github to deploy, need to install the git tools
$ sudo yum install git

##install virtualenv and create the python3 environment
#Install virtualenv for the current user using pip3.
$ pip3 install --user virtualenv
# Create a directory to hold your virtualenv environments
$ pwd
$ mkdir venv
$ cd venv
$ pwd
# Use the virtualenv command to create the python3 environment.
$ virtualenv -p /usr/bin/python3 python3
##Activate the environment and install Boto 3
$ source /home/ec2-user/venv/python3/bin/activate
#Use the which command to verify that you are now referencing the new environment.
$ which python
# Use the pip3 command to install Boto 3 from within the python3 environment.
$ pip3 install

# now type python and canimport boto3, finally, to deactivate the python3 environment
$  deactivate

 #Run the which command to confirm that you are using the default environment.
$ which python
/usr/bin/python

###02. To activate the python3 environment automatically when you log in, add it to your .bashrc file.
$ echo "source /home/ec2-user/venv/python3/bin/activate" >> /home/ec2-user/.bashrc


# after activate the desired python environment
#install numpy
$ pip install numpy

#install nlopt
$ pip install nlopt

# then we can open the test_run.py and test the example

###03. to run restful service example, need to install connexion
$ pip install connexion[swagger-ui]

###ohter dependencies
$ pip install python-dateutil