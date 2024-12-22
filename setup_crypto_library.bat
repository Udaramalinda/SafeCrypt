@echo off
REM Ensure the script is being run from the project's root directory
IF NOT EXIST "CMakeLists.txt" (
    echo Error: Please run this script from the root of the project.
    exit /b
)

REM Step 1: Install dependencies
echo Installing dependencies...

REM Install CMake and Visual Studio Build Tools
REM You can automate the installation of CMake or Visual Studio Tools if needed, but this example assumes they are installed

REM Step 2: Create build directory and configure project
echo Creating build directory...
mkdir build
cd build

REM Step 3: Run CMake to configure the project
echo Configuring project with CMake...
cmake ..

REM Step 4: Build the project using Visual Studio's `MSBuild` tool (for example, if CMake generates Visual Studio files)
echo Building the project...
MSBuild project.sln

REM Step 5: Run tests (if applicable)
echo Running tests...
.\tests.exe  REM Adjust this if you have different test executables

echo Setup complete! Your project is ready for development.
