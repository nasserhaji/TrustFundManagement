# Trust Fund Management Smart Contract

This repository contains a smart contract written in Solidity for managing trust funds and controlling information systems. The contract utilizes zero-knowledge proofs (zkp) to prove login authenticity and provides document storage functionality.

## Features

1. User Registration: Users can register with a unique username and password.
2. User Login: Registered users can log in by providing their username and password, which is authenticated using zero-knowledge proofs.
3. User Logout: Logged-in users can log out from the system.
4. Document Storage: Logged-in users can store their documents securely.
5. Document Retrieval: Logged-in users can retrieve their stored documents.

## Contract Structure

The smart contract consists of the following major components:

- **User Struct**: A structure that stores user information including username, password, and login status.
- **Users Mapping**: A mapping that associates user addresses with their respective User structs.
- **Documents Mapping**: A mapping that associates user addresses with their stored documents.
- **Event**: An event that is emitted when a user successfully logs in.

## Getting Started

To deploy and interact with the smart contract, follow these steps:

1. Clone this repository:

```bash
git clone https://github.com/hajihashemabad/TrustFundManagement.git
```

2. Install the necessary dependencies (Solidity compiler, Ethereum development framework, Python zkp library, etc.) as per your environment and project requirements.

3. Compile the smart contract using the Solidity compiler.

4. Deploy the compiled contract to the Ethereum blockchain using your preferred development framework (Truffle, Remix, etc.) or interact with it via a client library (Web3.js, ethers.js, etc.).
5. Implement the verifyProof function in the smart contract, using a Python zkp library (e.g., ZoKrates), to verify the zero-knowledge proof. Replace the placeholder implementation with the actual logic for verifying the proof.
6. Update the contract with the actual zero-knowledge proof verification logic in the verifyProof function.
7. Test the contract by registering users, logging in, storing documents, and retrieving documents.

## Usage

The following functions are available in the smart contract:

- `registerUser(string username, string password)`: Allows users to register with a unique username and password.
- `login(string username, string password)`: Enables registered users to log in by providing their username and password.
- `logout()`: Allows logged-in users to log out from the system.
- `storeDocument(string document)`: Enables logged-in users to securely store their documents.
- `retrieveDocument()`: Allows logged-in users to retrieve their stored documents.

## Contributing

Contributions are welcome! If you want to contribute to this project, follow these steps:

1. Fork this repository.
2. Create a new branch: `git checkout -b my-new-branch`.
3. Make your changes and commit them: `git commit -am 'Add some feature'`.
4. Push to the branch: `git push origin my-new-branch`.
5. Submit a pull request.

Please ensure that your code follows the repository's coding conventions and passes any existing tests.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- The Solidity programming language for smart contract development.
- Ethereum for providing the blockchain platform.
- The open-source community for their contributions and support.

## Contributing
I welcome contributions to the TrustFundManagement project! If you'd like to contribute, please fork the repository and create a new branch for your changes. Once you've made your changes, submit a pull request and I'll review it as soon as possible.

## Authors
- [Abdelnasser Hajihashemabad](https://github.com/hajihashemabad)

## Contact
If you have any questions or comments about Trust Fund Management Smart Contract, feel free to reach out to me at [Email](mailto:info@abdelnasser.com).
