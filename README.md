# C++ project template

This is a template for creating a c++ project.
The structure of the project reflects my view on how a modern c++ project should look like.

## Project structure

``` md
./
    <!-- Shared source code and libs. -->
    <!-- This will compile into static library. -->
    common/
        <!-- This directory you can use configure your libs. -->
        libs/
            CMakeLists.txt
            <!-- Configure your libs in this file -->
            configure_libs.cmake
            ...
        src/
            <!-- Your source code goes here -->
            root/
            CMakeLists.txt
        <!-- This directory is meant to be used to configure platform or compiler specific things -->
        <!-- in declarative and easy-to-spot manner. For now there are only a few tweaks for MSVC. -->
        platform/
            ...
        CmakeLists.txt
    <!-- Source code and libs, specific for executable. -->
    <!-- Here you can use everyhing that common dir provides. -->
    app/
        <!-- Executable specific libs -->
        libs/
            ...
        <!-- Executable specific source code. `main` function goes here. -->
        src/
            ...
        ...
    <!-- Source code and libs, specific for test. -->
    <!-- Here you also can use everything but the purpose is testing. -->
    <!-- By default gtest is used. -->
    test/
        <!-- Tests specific libs -->
        libs/
            ...
        <!-- Tests specific source code. `main` function for tests goes here. -->
        src/
            ...
        ...
```

## Requirements

 - [copier](https://copier.readthedocs.io/en/stable/) - a tool to create a specific project from this template;
 - [conan](https://conan.io/) - package manager for easy addition and use of third-party libraries;
 - [cmake](https://cmake.org/) - tool to configure your c++ project.


## Usage

This is just an example of one of possible workflows.
I'm still learning how to work with `conan` and this steps work for me for now.
You can build project however you like.

1. Clone this repo: `copier https://github.com/Smidimir/cpp_project_template.git my_project`
2. Create working director, for example `.build` or `.bin`
3. From this directory run `conan install .. -of . -s build_type=Debug --build=missing` to generate a project with all dependacies.
4. Run `conan build .. -of .` to build your first project. From this moment cmake will also generates its files in this folder.
5. Now `common`, `app` and `test` should be compiled.
