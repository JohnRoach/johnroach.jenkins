Jenkins
=========
  

This role installs and runs the Jenkins service. The jenkins service listens to
the 8080 port.

Requirements
------------

N/A

Role Variables
--------------
| Variable Name | Default Value | Definition |
|---------------|---------------|------------|
| jenkins_repo_url | https://pkg.jenkins.io/redhat/jenkins.repo | This is the RHL repo file |
| jenkins_rpm_key_url | https://pkg.jenkins.io/redhat/jenkins.io.key | This is the url to the key file |
|jenkins_rpm_artifact_url | https://pkg.jenkins.io/redhat/jenkins-2.111-1.1.noarch.rpm | This is the file to the RPM file. We hope to move this to an artifact repository. |


Dependencies
------------
The roles that this role is dependent are:

- geerlingguy.java

Example Playbook
----------------
This is how you would create the playbook:

    - hosts: jenkins
      roles:
         - { role: johnroach.jenkins }

Running Tests
-------------
1. Install ruby >= 2.3
2. Install bundler
   ```
   gem install bundler
   ```
3. Install the Gems
   ```
   bundler
   ```
4. Simply run the test script:
   ```
   ./test.sh
   ```

License
-------

MIT

Author Information
------------------

John Roach
