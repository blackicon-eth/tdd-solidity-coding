// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.8.2 <0.9.0;


import "@openzeppelin/contracts/access/Ownable.sol";


contract HelloWorld is Ownable {
    bytes32 text;


    constructor() {
        text = bytes32("Hello World!");
    }

    function helloWorld() public view returns (bytes32){
        return text;
    }


    function store(bytes32 txt) public onlyOwner {
        text = txt;
    }

    function transferOwnership(address newOwner) public override onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }
}
