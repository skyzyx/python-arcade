# Sample Arcade Program

## Development

### Installation

1. Install Python 3.9.

    ```bash
    brew install python@3.9
    ```

1. Install the Poetry package manager for Python.

    ```bash
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3.9 -
    ```

1. (Optional) If you see warnings about Python 2.7 and needing to upgrade, try creating a symlink.

    ```bash
    ln -s /usr/local/bin/python3.9 /usr/local/bin/python
    ```

1. Install the project dependencies.

    ```bash
    poetry install
    ```

1. Load environment in a sub-shell.

    ```bash
    poetry shell
    ```
