# A record of the commands I used to create the .venv
uv init --python 3.13.5
uv add jupyterlab nbstata jupyterlab_stata_highlight2
# If using parameters
# uv add papermill

# To restore the .venv
uv sync

# Then activate the virtual environment, etc
source .venv/bin/activate
# Windows: source .venv/Scripts/activate
