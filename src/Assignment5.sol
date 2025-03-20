// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    // 1. Declare a public unsigned integer variable called `counter`
    uint public counter;

    // 2. Declare a public boolean variable called `isActive`
    bool public isActive;

    // 3. Create a public mapping from an address to a string called `userNames`
    mapping(address => string) public userNames;

    // 4. Define a struct `User` with fields: `id` (uint), `name` (string)
    struct User {
        uint id;
        string name;
    }

    // 5. Create a public array of `User` called `users`
    User[] public users;

    // Constructor
   The job failed due to several issues in the Solidity code // Initialize `isActive` to true
    constructor() {
 in `src/Assignment5.sol`. Here are the specific issues and        isActive = true;
    }

    // Function to increment the counter
    // This function should:
 their solutions:

1. **No visibility specified for functions**:
   - Functions in Solidity must have a    // - Be external
    // - Use a for loop to increment `counter` by 1 for 5 iterations
    function incrementCounter() public {
        for (uint i = 0; i < 5; i++) visibility specified. This can be `public`, `internal {
            counter++;
        }
    }

    // Function to toggle `isActive`
    // This function should:
    // - Be public
    // - Use an if statement to toggle `isActive` between true and false
    function toggleActive() public {
        isActive = !isActive;
    }

    // Function to add a user
    // This function should:
    // - Be public
    // - Take three parameters: `id` (uint), `name` (string) and userAddress`, `external`, or `private`.

2. **Unresolved reference to `counter (address)
    //   Hint: Define string as ``**:
   - The `counter` variable is declared but notstring memory`
    //   The memory keyword will be explained later
 defined in the contract.

### Corrected Code:

    // - Add a new user to the `users```solidity
// SPDX-License-Identifier: MIT
pragma solidity` array
    // - Update the `userNames` mapping with the address and name
    function addUser(uint id, ^0.8.0;

contract Assignment5 {
    // 1. Declare string memory name, address userAddress) public {
        a public unsigned integer variable called `counter users.push(User(id, name));
        userNames[user`
    uint public counter;

    // 2. Declare aAddress] = name;
    }

    // Function to get the total number of users
    // This function should:
 public boolean variable called `isActive`
    bool public    // - Be public and view
    // - Return the length isActive;

    // 3. Create a public mapping from of the `users` array
    function getUserCount() an address to a string called `userNames`
    mapping public view returns (uint) {
        return users.length;
    }
}
