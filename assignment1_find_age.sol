// Yash Patel 2019130047 BE Comps

pragma solidity >= 0.7.0;

contract FindAge {
    uint age;
    
    function find_age (uint birth_year) public {
        age = 2022 - birth_year;
    }

    function get_age () view public returns (uint) {
        return age;
    }
}