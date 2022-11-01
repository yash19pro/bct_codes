// Yash Patel 2019130047 Comps

pragma solidity ^0.8.17;

contract CreditCardLimit {
    uint256 card_limit = 10000;
    uint256 travel_cost;
    uint256 food_cost;
    uint256 stay_cost;

    function set_travel_cost(uint256 cost) public {
        travel_cost = cost;
    }

    function set_food_cost(uint256 cost) public {
        food_cost = cost;
    }

    function set_stay_cost(uint256 cost) public {
        stay_cost = cost;
    }

    function get_remaining_balance() public view returns (uint256) {
        return card_limit - (travel_cost + food_cost + stay_cost);
    }
}
