# Login and Register Project

This project is a demonstration of login and register functionalities with automation using Robot Framework.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Running the Tests](#running-the-tests)
- [Project Structure](#project-structure)

## Introduction

The project showcases automated tests for the login and register functionalities of a web application. It uses Robot Framework, a keyword-driven test automation framework.

## Features

- Automated login and register tests.
- Clear and modular project structure.
- Easy to extend and customize for specific applications.

## Prerequisites

Ensure you have the following software installed:

- Python: https://www.python.org/downloads/
- Robot Framework: https://robotframework.org/
- SeleniumLibrary for Robot Framework: `pip install robotframework-seleniumlibrary`

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/login-register-project.git
    cd login-register-project
    ```

2. Install the required dependencies:

    ```bash
    pip install -r requirements.txt
    ```

## Running the Tests

Execute the Robot Framework tests with the following command:

```bash
robot tests/
```
# Project Structure

```bash
/RobotFramework-Web-Automation
|-- PageObjects/
|   |-- Locators.py
|-- Resources/
|   |-- Login-Keywords.robot
|   |-- Register-Keywords.robot
|-- TestCase/
|   |-- Login.robot
|   |-- Register.robot
|-- .gitignore
|-- README.md
```
* PageObjects/: Contains Robot Framework Page Objects files.
* Resources/: Contains reusable keyword files.
* TestCase/: Contains Robot Framework test case files.
* .gitignore: Specifies files and directories to be ignored by Git.
