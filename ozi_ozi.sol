// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OziOzi {
    event Message(string text);

    function ozi() external {
        emit Message("Ozi Ozi");
    }
}
