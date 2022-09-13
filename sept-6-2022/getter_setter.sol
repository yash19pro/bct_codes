pragma solidity >= 0.7.0;

contract MessageContract {

    string message = "Hello World";

    function getMessage() public view returns(string) {
        return message;
    }

    function setMessage(string newMessage) public {
        message = newMessage;
    }
}