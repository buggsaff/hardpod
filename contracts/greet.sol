// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.9;

contract Greeter {
    string private geetings;

    constructor(string memory _gretting) {
        console.log("Deploying a greeting with greeting: ", _gretting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log(
            "Changing greeting from '%s' to '%s' ",
            greeting,
            _greeting
        );
        greeting = _greeting;
    }
}
