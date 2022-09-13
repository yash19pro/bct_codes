// Yash Patel 2019130047 BE Comps

pragma solidity >= 0.7.0;

contract Loop {
    function loop () public pure {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }

            if (i == 5) {
                break;
            }
        }

        uint j;
        while (j < 10) {
            j++;
        }
    }
}
