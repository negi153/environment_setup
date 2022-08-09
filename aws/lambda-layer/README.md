# How to create python Virtual environment, install modules & create aws lambda layer?
1. To create aws lambda layer, follow all these steps in linux environment. 

2. In this example we will install `snowflake-sqlalchemy` and `pandas` in python virtual environment

3. Create virtual environment named **pyenv**.
    
    `python -m venv pyenv`

4. Activate virtual environment.
    
    `source pyenv/bin/activate`

5. Upgrade pip version.
  
    `python -m pip install --upgrade pip` / `pip install pip --upgrade`

6. Make folder structure to store modules for layer.

    * eg. Folder structure should look like `python/lib/python3.7/site-packages/` for layer.
    * `mkdir -p python/lib/python3.7/site-packages/`
    * It's not compulsory to create this folder structure explicitly. In Below command `target` or `t` option can create folder structure.

7. Install required modules.

    `pip install -r requirements.txt --target python/lib/python3.7/site-packages/` **or** `pip install -r requirements.txt --t python/lib/python3.7/site-packages/`

8. Zip the modules.

    `zip -r snowflake-slqalchemy-pandas.zip python/`

9. Upload `snowflake-slqalchemy-pandas.zip` to S3 bucket and create aws lambda layer.