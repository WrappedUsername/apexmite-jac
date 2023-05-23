// SPDX-License-Identifier: MIT
/**
          :::     :::::::::  :::::::::: :::    :::   :::   :::   ::::::::::: ::::::::::: :::::::::: 
       :+: :+:   :+:    :+: :+:        :+:    :+:  :+:+: :+:+:      :+:         :+:     :+:         
     +:+   +:+  +:+    +:+ +:+         +:+  +:+  +:+ +:+:+ +:+     +:+         +:+     +:+          
   +#++:++#++: +#++:++#+  +#++:++#     +#++:+   +#+  +:+  +#+     +#+         +#+     +#++:++#      
  +#+     +#+ +#+        +#+         +#+  +#+  +#+       +#+     +#+         +#+     +#+            
 #+#     #+# #+#        #+#        #+#    #+# #+#       #+#     #+#         #+#     #+#             
###     ### ###        ########## ###    ### ###       ### ###########     ###     ##########        

      :::::::::     :::   :::   :::  :::   :::   :::::::::: ::::    ::: ::::::::::: :::::::: 
     :+:    :+:  :+: :+: :+:   :+: :+:+: :+:+:  :+:        :+:+:   :+:     :+:    :+:    :+: 
    +:+    +:+ +:+   +:+ +:+ +:+ +:+ +:+:+ +:+ +:+        :+:+:+  +:+     +:+    +:+         
   +#++:++#+ +#++:++#++: +#++:  +#+  +:+  +#+ +#++:++#   +#+ +:+ +#+     +#+    +#++:++#++   
  +#+       +#+     +#+  +#+   +#+       +#+ +#+        +#+  +#+#+#     +#+           +#+    
 #+#       #+#     #+#  #+#   #+#       #+# #+#        #+#   #+#+#     #+#    #+#    #+#     
###       ###     ###  ###   ###       ### ########## ###    ####     ###     ########       
 */
pragma solidity 0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

/// @author WrappedUsername
contract ApexmitePayments is Ownable {
    /// @notice Price in ethereum
    uint256 public priceSubscription = 0.0025 ether;
    uint256 public priceCustomAIGenerativeNFT = 0.1 ether;
    uint256 public priceMicroService = 0.0025 ether;

    event PaymentReceived(address indexed payer, uint256 amount);
    event UpdatePrice(uint256 amount, uint256 when);
    event Withdrawal(uint256 amount, uint256 when);

    constructor() {}

    function paySubscription() public payable {
        require(msg.value == priceSubscription, "Incorrect payment amount");
        emit PaymentReceived(msg.sender, msg.value);
    }

    function purchaseCustomAIGenerativeNFT() public payable {
        require(msg.value == priceCustomAIGenerativeNFT, "Incorrect payment amount");
        emit PaymentReceived(msg.sender, msg.value);
    }

    function payMicroService() public payable {
        require(msg.value == priceMicroService, "Incorrect payment amount");
        emit PaymentReceived(msg.sender, msg.value);
    }

    function updateSubscriptionPrice(uint256 newSubscriptionPrice) public payable onlyOwner {
        priceSubscription = newSubscriptionPrice;
        emit UpdatePrice(newSubscriptionPrice, block.timestamp);
    }

    function updateCustomAIGenerativeNFTPrice(uint256 newCustomAIGenerativeNFTPrice) public payable onlyOwner {
        priceCustomAIGenerativeNFT = newCustomAIGenerativeNFTPrice;
        emit UpdatePrice(newCustomAIGenerativeNFTPrice, block.timestamp);
    }

    function updateMicroServicePrice(uint256 newMicroServicePrice) public payable onlyOwner {
        priceMicroService = newMicroServicePrice;
        emit UpdatePrice(newMicroServicePrice, block.timestamp);
    }

    function getThisBalance() public view onlyOwner returns(uint256) {
        return address(this).balance;
    }

    function withdraw() public payable onlyOwner {
        payable(owner()).transfer(address(this).balance);
        emit Withdrawal(address(this).balance, block.timestamp);
    }
}
