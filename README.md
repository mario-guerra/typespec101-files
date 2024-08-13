# TypeSpec 101 Tutorial Project

This repository contains the sample project files for each section of the [TypeSpec 101 video series](https://aka.ms/typespec101/videos). Each `main.tsp.sectionXX` file represents the final state of the `main.tsp` file at the end of the corresponding video section, with `XX` representing the section number.

## Getting Started

To follow along with the tutorial, we recommend creating your own project by following the setup and installation instructions below.

### Summary of Setup and Installation

1. **Install Visual Studio Code**:
   - Download and install Visual Studio Code from [aka.ms/vscode](https://aka.ms/vscode).

2. **Install TypeSpec VS Code Extension**:
   - Install the TypeSpec extension for Visual Studio Code from [aka.ms/typespec-vscode](https://aka.ms/typespec-vscode).

3. **Install Node.js**:
   - Download and install Node.js from [nodejs.org](https://nodejs.org/). This will also install npm, the Node.js package manager.
   - The minimum versions required are Node.js 20.0.0 and npm 7.0.0.

4. **Install TypeSpec CLI**:
   - Run the following command to install the TypeSpec CLI globally:
     ```sh
     npm install -g @typespec/compiler
     ```

5. **Verify Installation**:
   - Run the following command to verify that the TypeSpec CLI is installed correctly:
     ```sh
     tsp --version
     ```

6. **Create a New Project**:
   - Run the following command to initialize a new TypeSpec project and select the Generic REST API template:
     ```sh
     tsp init
     ```
   - Navigate to your project directory and install the dependencies:
     ```sh
     tsp install
     ```
   - Compile the initial file to ensure everything is set up correctly:
     ```sh
     tsp compile .
     ```
   - To automatically compile changes on save, run the following command:
     ```sh
     tsp compile . --watch
     ```

7. **Use Reference Files**:
   - As you follow along with the tutorial, you can use the `main.tsp.sectionXX` files from this repository as reference material. Copy these files into your newly created project directory to compare your progress or to catch up if you get stuck.

## Feedback and Community Engagement

We value your feedback and would love to hear about your experiences with this tutorial. Please feel free to share your thoughts and suggestions in our [GitHub discussions channel](https://github.com/microsoft/typespec/discussions).

Join the TypeSpec community on [Discord](https://aka.ms/typespec/discord) to engage with other developers, ask questions, and contribute to discussions. Your participation helps us improve and grow the TypeSpec ecosystem.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
