// Yash Patel 2019130047 BE Comps

pragma solidity >= 0.7.0;

contract Average {
    uint[] public arr = [565, 19, 27, 28, 400, 5700, 3900, 854, 4789, 2, 5, 78, 18, 142];

    function find_average() public returns (uint256) {
        uint sum  = 0;
        uint arr_length = arr.length;

        for (uint i = 0; i < arr_length; i++) {
            sum = sum + arr[i];
        }

        return sum / arr_length;
    }
}
