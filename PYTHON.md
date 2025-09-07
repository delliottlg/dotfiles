# Python Development Setup

Python environment management and common workflows.

## Package Management Philosophy

- **venv**: Primary virtual environment tool (tried and true)
- **uv**: Fast installer, but still learning/experimenting
- **Claude Code**: Let AI handle most package management decisions

## Common venv Workflows

### Basic Virtual Environment
```bash
# Create new environment
python -m venv myproject-env

# Activate (Linux/macOS)
source myproject-env/bin/activate

# Activate (Windows)
myproject-env\Scripts\activate

# Deactivate
deactivate

# Remove environment
rm -rf myproject-env
```

## Fish Shell Aliases/Functions

Add these to fish config for faster venv management:

```fish
# Virtual environment shortcuts
abbr -a venv 'python -m venv'
abbr -a va 'source venv/bin/activate'  # assumes standard 'venv' folder
abbr -a vd 'deactivate'

# Common venv patterns
abbr -a vnew 'python -m venv venv && source venv/bin/activate'
abbr -a vact 'source */bin/activate'  # activate any venv in current dir
```

## Project Templates

### Basic Data Science Project
```
requirements.txt contents:
- pandas
- numpy  
- matplotlib
- jupyter
- requests
```

### Web Development Project
```
requirements.txt contents:
- flask or fastapi
- requests
- python-dotenv
- pytest
```

### CLI Tool Project
```
requirements.txt contents:
- click or typer
- rich (for pretty output)
- requests
- pytest
```

## uv Experimentation

Since uv is new, keep these commands handy:

```bash
# Install uv globally
pip install uv

# Use uv instead of pip (faster)
uv pip install package-name

# Create venv with uv
uv venv

# Install from requirements
uv pip install -r requirements.txt
```

## Global Python Tools

Tools to install globally (outside of venv):

```bash
# Essential global tools
pip install uv          # Fast package installer
pip install black       # Code formatter  
pip install flake8      # Linter
pip install ipython     # Better REPL
```

## Claude Code Integration

Let Claude Code handle:
- Choosing between similar packages
- Creating requirements.txt files
- Setting up project structure
- Debugging environment issues
- Package compatibility decisions

## Notes

- Always use virtual environments (no global pip installs for projects)
- Keep requirements.txt updated
- Use descriptive venv folder names for multiple projects
- Let AI tools handle the complex dependency decisions