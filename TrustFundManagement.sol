pragma solidity >=0.4.22 <0.9.0;

contract TrustFundManagement {
    // Struct to store user information
    struct User {
        string username;
        string password;
        bool isLoggedIn;
    }

    // Mapping to store user data
    mapping(address => User) public users;

    // Mapping to store document data
    mapping(address => string) public documents;

    // Event emitted when a user logs in
    event UserLoggedIn(address indexed user);

    // Modifier to check if the user is logged in
    modifier isLoggedIn() {
        require(users[msg.sender].isLoggedIn, "User is not logged in");
        _;
    }

    // Function to register a new user
    function registerUser(string memory username, string memory password) public {
        require(bytes(users[msg.sender].username).length == 0, "User already registered");

        users[msg.sender] = User(username, password, false);
    }

    // Function to log in a user
    function login(string memory username, string memory password) public {
        User storage user = users[msg.sender];
        require(keccak256(abi.encodePacked(user.username)) == keccak256(abi.encodePacked(username)), "Invalid username");
        require(keccak256(abi.encodePacked(user.password)) == keccak256(abi.encodePacked(password)), "Invalid password");

        user.isLoggedIn = true;
        emit UserLoggedIn(msg.sender);
    }

    // Function to log out a user
    function logout() public isLoggedIn {
        users[msg.sender].isLoggedIn = false;
    }

    // Function to store a document
    function storeDocument(string memory document) public isLoggedIn {
        documents[msg.sender] = document;
    }

    // Function to retrieve a document
    function retrieveDocument() public view isLoggedIn returns (string memory) {
        return documents[msg.sender];
    }
}
