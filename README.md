# SafeCrypt

A C++ library implementing various cryptographic signature schemes and protocols, including:

- Blind Signatures
- Proxy Signatures
- Group Signatures
- Multi-Signatures
- Oblivious Transfer Protocol

## Features

- **Signature Schemes**: Implements different signature schemes often used in privacy-preserving protocols and cryptographic systems.
- **Modular Architecture**: Each signature scheme is implemented as a separate module, making it easy for developers to add or modify specific schemes.
- **Test Coverage**: Includes unit tests for each cryptographic scheme, ensuring correctness and robustness.
- **Cross-Platform**: Can be built and used on any platform that supports C++17.

## Supported Signature Schemes

### 1. **Blind Signature**
A cryptographic scheme that allows a user to have a message signed by a signer without revealing the content of the message to the signer.

### 2. **Proxy Signature**
Enables a proxy to sign a message on behalf of the original signer, allowing delegation of signing authority.

### 3. **Group Signature**
A scheme that allows members of a group to sign messages on behalf of the group, providing anonymity to individual signers.

### 4. **Multi-Signature**
Allows multiple signers to combine their signatures to create a single valid signature. Useful in systems requiring collective agreement.

### 5. **Oblivious Transfer Protocol**
A cryptographic protocol that allows a sender to transfer one of several pieces of information to a receiver, without knowing which one was chosen.

## Getting Started

### Prerequisites

- C++17 compatible compiler (e.g., GCC, Clang, MSVC)
- CMake 3.16 or higher (for building the project)
- `GoogleTest` for running unit tests (can be installed via `cmake` or manually)

### Easy Setup (Cross-Platform)

After cloning the repository, you can automatically set up the development environment on any platform (Linux, macOS, or Windows) by running the following script:

1. Clone the repository:

   ```bash
   git clone https://github.com/Udaramalinda/SafeCrypt
   cd SafeCrypt
   ```

2. Run the setup script:
   - On **Linux/macOS**:
     ```bash
     chmod +x setup.sh  # Make the script executable
     ./setup.sh
     ```
   - On **Windows**:
     Run `setup.bat` from the command prompt.

This script will:
- Install required dependencies (CMake, C++ compiler).
- Set up the project.
- Build the library.
- Run tests (if applicable).

### Manual Setup (if not using the script)

If you prefer setting up the project manually, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/Udaramalinda/SafeCrypt
   cd SafeCrypt
   ```

2. Create a build directory:

   ```bash
   mkdir build && cd build
   ```

3. Run `CMake` to configure the project:

   ```bash
   cmake ..
   ```

4. Build the project:

   ```bash
   make
   ```

### Running Tests

Once the project is built, you can run the unit tests to verify the correctness of the library:

```bash
./build/tests
```

Or if you are using CMake:

```bash
ctest
```

## Directory Structure

The project is organized as follows:

```plaintext
SafeCrypt/
├── include/                # Public headers
│   ├── CryptoLib.h         # Main library header
│   ├── signatures/         # Signature schemes headers
│   └── utils/              # Utility headers
├── src/                    # Implementation files
│   ├── signatures/         # Signature schemes implementations
│   └── utils/              # Utility implementations
├── tests/                  # Unit and integration tests
├── cmake/                  # CMake modules
├── CMakeLists.txt          # Top-level CMake file
├── Makefile                # Makefile for building the library
└── README.md               # Project documentation
```

### Code Style

- Follow consistent coding conventions for readability and maintainability.
- C++17 features are used throughout the library.
- Use `clang-format` to maintain consistent formatting.

### Contributing

We welcome contributions to the library! To contribute:

1. Fork the repository.
2. Create a new branch for your changes.
3. Write your code and tests.
4. Ensure all tests pass.
5. Submit a pull request with a description of your changes.

Please ensure that your code adheres to the project's coding style and includes tests for any new functionality.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
