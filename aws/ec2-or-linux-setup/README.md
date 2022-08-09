# How to install Python3.7 or any version in AWS ec2 instance / Linux?
1. Install basic packages.
    ```sh
    sudo yum install gcc openssl-devel bzip2-devel libffi-devel
    cd /opt
    ```

2. Choose python version from [Python-for-linux](https://www.python.org/downloads/source/) specific to linux.
    ```sh
    sudo wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
    sudo tar xzf Python-3.7.9.tgz
    cd Python-3.7.9
    sudo ./configure --enable-optimizations
    sudo make altinstall
    ```
3. Setup bash profile if not set already to point to python3.7.
    * `vi ~/.bash_profile`

    * add below line

        * `alias python=python3.7`

    * Save file

        * `source ~/.bash_profile`


# SAM (Serverless Application Model) Installation
1. Download SAM
    
    `wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip`

2. Unzip

    `unzip aws-sam-cli-linux-x86_64.zip -d sam-installation`

3. Install

    `sudo ./sam-installation/install`


# Update AWS CLI to version 2
1. Download.

    `curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"`

2. Unzip.

    `unzip awscliv2.zip`

3. Install.

    `sudo ./aws/install`    


