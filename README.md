# Demo repo showing how to use Quarto profiles to create tutorial worksheets

This is to accompany my blog post [here](https://remlapmot.github.io/post/2025/quarto-profiles-for-tutorials/).

To restore the virtual environment .venv, install uv and run

```sh
uv sync
```

Then activate the virtual environment, etc

```sh
source .venv/bin/activate
# Windows: source .venv/Scripts/activate
```

If running the documents using Stata run

```sh
python -m nbstata.install --sys-prefix
# export PYTHONPATH=/Applications/Stata/utilities
```

Render the files by running the render.sh script

```sh
./render.sh
```
