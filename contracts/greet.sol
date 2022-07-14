// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details
import "hardhat/console.sol";
contract Greeter {
    
    string private greetings;

    constructor(string memory _greeting) {
        console.log("Deploying a greeting with greeting: ", _greeting);
        greetings = _greeting;
    }

    function greet() public view returns (string memory) {
        return greetings;
    }

    function setGreeting(string memory _greeting) public {
        console.log(
            "Changing greeting from '%s' to '%s' ",
            greetings,
            _greeting
        );
        greetings = _greeting;
    }
}
