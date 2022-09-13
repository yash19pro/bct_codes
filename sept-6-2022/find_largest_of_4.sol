pragma solidity >= 0.7.0;

contract FindLargest {
    uint a;
    uint b;
    uint c;
    uint d;

    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require (owner == msg.sender, "Not accessible");
        _;
    }

    
    function set (uint _a, uint _b, uint _c, uint _d) public onlyOwner {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function final_result() view onlyOwner returns (uint) {
        if ((a > b) && (a > c) && (a > d)) {
            return a;
        }
        else if ((b > a) && (b > c) && (b > d)) {
            return b;
        }
        else if ((c > b) && (c > a) && (c > d)) {
            return c;
        }
        else {
            return d;
        }
    }
}