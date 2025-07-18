<file_path>
bug-free-octo-guacamole/docs/installation.md
</file_path>

# Installation Guide

This document provides detailed instructions for installing the **Bug-Free Octo Guacamole** project.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- **Python 3.8 or higher**: You can download it from [python.org](https://www.python.org/).
- **pip**: Python's package installer, which is included with Python 3. Ensure it is up-to-date by running:
  ```bash
  python -m pip install --upgrade pip
  ```
- **Git**: For cloning the repository. Download it from [git-scm.com](https://git-scm.com/).

## Installation Steps

Follow these steps to set up the project:

### 1. Clone the Repository

Clone the repository to your local machine using Git:

```bash
git clone https://github.com/lbenicio/bug-free-octo-guacamole.git
cd bug-free-octo-guacamole
```

### 2. Set Up a Virtual Environment (Optional but Recommended)

It is recommended to use a virtual environment to isolate the project's dependencies:

```bash
python -m venv venv
source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
```

### 3. Install Dependencies

Install the required Python packages:

```bash
pip install -r requirements.txt
```

### 4. Verify the Installation

Run the following command to verify that the installation was successful:

```bash
python -m pip list
```

Ensure that all required dependencies are listed.

## Additional Notes

- If you encounter any issues during installation, please refer to the [Troubleshooting Guide](troubleshooting.md).
- For building the documentation, additional dependencies are required. Refer to the [Documentation Guide](documentation.md) for more details.

You are now ready to use the **Bug-Free Octo Guacamole** project!