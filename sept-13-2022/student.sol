pragma solidity >= 0.7.0;

contract Student {
    string name;
    string mail;
    uint contact;
    string college;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require (owner == msg.sender, "Only owner can retrieve the data");
        _;
    }

    function set (string memory _name, string memory _mail, uint256 _contact, string memory _college) public onlyOwner {
        name = _name;
        mail = _mail;
        contact = _contact;
        college = _college;
    }

    function retrieve () public view onlyOwner returns (string memory, string memory, uint256, string memory) {
        return (name, mail, contact, college);
    }
}
