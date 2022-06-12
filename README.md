## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Images/AzureCloudTopology.png

These files have been tested and used to generate a live ELK deployment on Azure. 
They can be used to either recreate the entire deployment pictured above. 
Alternatively, select portions of the file may be used to install only certain pieces of it, 
such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, 
the Damn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access 
to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_ 
	The off-loading function of a load balancer defends an organization against distributed denial-of-service (DDoS) attacks. 
	It does this by shifting attack traffic from the corporate server to a public cloud provider.
	When a jump box is used, its hidden benefit is that any tools in place for the SAN system are maintained on that single system. Therefore,
	when an update to the SAN management software is available, only a single system requires the update

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- _TODO: What does Filebeat watch for?_
	When a jump box is used, its hidden benefit is that any tools in place for the SAN system are maintained on that single system. Therefore, 
	when an update to the SAN management software is available, only a single system requires the update
- _TODO: What does Metricbeat record?_
	When a jump box is used, its hidden benefit is that any tools in place for the SAN system are maintained on that single system. Therefore, 
	when an update to the SAN management software is available, only a single system requires the update

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name          | Function                 | IP Address    | Operating |
|---------------|--------------------------|---------------|-----------|
| Web-1         | Display Web Pages        | 10.1.0.5      | Ubuntu    |
| Web-2         | Display Web Pages        | 10.1.0.6      | Ubuntu    |
| Jump-Box      | Act as a gateway router  | 10.1.0.4      | Ubuntu    |
| Load Balancer | Balance the traffic      | 20.28.242.161 | Ubuntu    |
| Elk Server    | Run File and metric beat | 10.2.0.4      | Ubuntu    |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_ 114.73.239.111

Machines within the network can only be accessed by SSH.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_ 

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_
	Very simple to set up and use: No special coding skills are necessary to use Ansible's playbooks. Powerful: Ansible lets you model even highly complex IT workflows. 
	Flexible: You can orchestrate the entire application environment no matter where it's deployed

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
	Filebeat is a lightweight shipper for forwarding and centralizing log data. Installed as an agent on your servers, Filebeat monitors the log files or locations that you specify, 
	collects log events, and forwards them either to Elasticsearch or Logstash for indexing

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._