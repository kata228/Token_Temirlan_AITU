pragma solidity >=0.4.16 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

    contract AITU_Temirlan_Token is ERC20 {
    address public admin;
    constructor() ERC20('AITU_Temirlan_Token', 'MTN') {
        _mint(msg.sender, 2000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address account, uint256 amount) external {
        require(msg.sender == admin, 'Access denied');
        _mint(account, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}