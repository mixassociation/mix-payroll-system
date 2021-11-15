pragma solidity ^0.5.6;

import "./klaytn-contracts/token/KIP17/IKIP17.sol";
import "./klaytn-contracts/ownership/Ownable.sol";
import "./klaytn-contracts/math/SafeMath.sol";
import "./interfaces/IMixNameService.sol";
import "./interfaces/IMix.sol";

contract MixPayroll is Ownable, IMixPayroll {
    using SafeMath for uint256;

    IMix public mix;

    struct Employee {
        address addr;
        uint256 salary;
        uint256 endPaymentBlock;
        uint256 lastPaymentBlock;
    }

    Employee[] public employees;
    mapping(address => uint256) public employeesIndex;

    constructor(IMix _mix) public {
        mix = _mix;
    }

    function addEmployee(
        address addr,
        uint256 salary,
        uint256 endPaymentBlock
    ) onlyOwner external {

    }

    function addSalary(uint256 salary) onlyOwner external {
        //TODO:
    }

    function extend(uint256 salary, uint256 endPaymentBlock) onlyOwner external {
        //TODO:
    }

    function payment() external {
        //TODO:
    }
}
