// SPDX-License-Identifier: MIT
pragma solidity 0.5.6;

import "@klaytn/contracts/token/KIP17/KIP17Token.sol";
import "@klaytn/contracts/drafts/Counters.sol";

contract MyKIP17TokenV2 is KIP17Token {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() public KIP17Token("My KIP17 Token V2", "MK17TV2") {

    }

    function mintNFT(address recipient, string memory tokenURI) public onlyMinter returns(uint256) {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}