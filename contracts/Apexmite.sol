// SPDX-License-Identifier: MIT
/**
          :::     :::::::::  :::::::::: :::    :::   :::   :::   ::::::::::: ::::::::::: :::::::::: 
       :+: :+:   :+:    :+: :+:        :+:    :+:  :+:+: :+:+:      :+:         :+:     :+:         
     +:+   +:+  +:+    +:+ +:+         +:+  +:+  +:+ +:+:+ +:+     +:+         +:+     +:+          
   +#++:++#++: +#++:++#+  +#++:++#     +#++:+   +#+  +:+  +#+     +#+         +#+     +#++:++#      
  +#+     +#+ +#+        +#+         +#+  +#+  +#+       +#+     +#+         +#+     +#+            
 #+#     #+# #+#        #+#        #+#    #+# #+#       #+#     #+#         #+#     #+#             
###     ### ###        ########## ###    ### ###       ### ###########     ###     ##########        
 */
pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";

/// @author WrappedUsername
contract Apexmite is ERC20, ERC20Burnable, ERC20Snapshot, Ownable, ERC20FlashMint {
    uint256 public lastMint;
    uint256 public constant INFLATION_RATE = 2; // 2% annual inflation
    
    event Withdrawal(uint amount, uint when);

    constructor() ERC20("Apexmite", "APXMT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
        lastMint = block.timestamp;
    }

    function mint() public onlyOwner {
        require(
            block.timestamp >= lastMint + 365 days,
            "Apexmite: Cannot mint until 1 year has passed since last mint"
        );
        uint256 amount = (totalSupply() * INFLATION_RATE) / 100;
        _mint(owner(), amount);
        lastMint = block.timestamp;
    }

    function snapshot() public onlyOwner {
        _snapshot();
    }

    // The following functions are overrides required by Solidity.

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20, ERC20Snapshot)
    {
        super._beforeTokenTransfer(from, to, amount);
    }

    function getThisBalance() public view onlyOwner returns(uint256) {
        return address(this).balance;
    }

    function withdraw() public onlyOwner {
        emit Withdrawal(address(this).balance, block.timestamp);
        payable(owner()).transfer(address(this).balance);
    }
}
