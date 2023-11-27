// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract NFTContract is ERC721 {
    using Strings for uint256;

    string private _myBaseURI;
    uint256 private _tokenIdCounter;

    constructor(string memory baseURI) ERC721("NFTContract", "NFTC") {
        _myBaseURI = baseURI;
    }

    function _baseURI() internal view override returns (string memory) {
        return _myBaseURI;
    }

    function mint(address to) public {
        _tokenIdCounter++;
        _safeMint(to, _tokenIdCounter);
    }
}