## Keep requirements.txt file in the same location as this shell file.

# Create virtual environment
python -m venv pyenv

# activate virtual environment
source pyenv/bin/activate

# upgrade pip
pip install --upgrade pip

# make folder to store modules
mkdir -p layer-temp/python/lib/python3.7/site-packages/

# install modules
pip install -r requirements.txt --target layer-temp/python/lib/python3.7/site-packages/

# Create zip file
cd layer-temp
zip -r snowflake-pandas-sqlalchemy.zip .

# deactivate
deactivate
