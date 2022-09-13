// Yash Patel 2019130047 BE Comps

pragma solidity >= 0.7.0;

contract ViewAndPure {
    uint public x = 19;
    
    // view -> only read
    function addToX (uint y) public view returns (uint) {
        return x + y;
    }

    // pure -> no read and no write
    function add (uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
