# How to setup Virtual environment & install jupyter-notebook?
1. Create virtual environment and activate it.
    
    `python -m venv <environment_name>`

2. Activate virtual environment.
    - Windows
    ```
      cd <environment_name>/scripts
      activate
      ```
    - Linux
    ```
      cd <environment_name>/bin
      source activate
      ```
3. Upgrade pip version.
  
    `python -m pip install --upgrade pip` / `pip install --upgrade pip`

4. Install jupyter-notebook in virtual environment.

    `pip install notebook`

5. Add virtual environment kernel to jupyter notebook.
    ```
    pip install ipykernel
    python -m ipykernel install --user --name=<environment_name>
    ```
6. To detach kernel from jupyter-notebook, run below command.
    - First activate virtual environment where u have installed jupyter notebook.
    - List all kernels.
    
        `jupyter kernelspec list`
    - Delete kernel.
    
        `jupyter kernelspec uninstall <kernel_name>`

7. Open jupyter-noteboo.
    
    `jupyter-notebook`