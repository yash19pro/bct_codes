pragma solidity >= 0.7.0;

contract Arithmetic {
    uint final_answer;
    
    function add (uint _a, uint _b) public {
        final_answer = _a + _b;
    }

    function sub (uint _a, uint _b) public {
        final_answer = _a - _b;
    }

    function mul (uint _a, uint _b) public {
        final_answer = _a * _b;
    }

    function divide (uint _a, uint _b) public {
        final_answer = _a / _b;
    }

    function final_result() view public returns (uint) {
        return final_answer;
    }
}