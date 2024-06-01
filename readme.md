#### Backend

1. Ask

`
Provide an example of an NFT metadata service using the Express framework. The service should include a feature to query the details of two different planets, with the descriptions presented in a visualized manner, and return the metadata in JSON format.
`

2. Create a folder called 'backend', then add a file named `server.js` and paste the code into this file
3. You can edit metadata in this part of the code:

```js
const planets = [
  {
    id: 1,
    name: 'Earth',
    description: 'The third planet from the Sun and the only known astronomical object known to harbor life.',
    image: 'https://th.bing.com/th/id/OIG.9e9ZjALU8VLLnq2K_BXE?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn'
  },
  {
    id: 2,
    name: 'Mars',
    description: 'The fourth planet from the Sun and the second-smallest planet in the Solar System.',
    image: 'https://th.bing.com/th/id/OIG.IZnE7KUxKYD9q.nAT.Ei?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn'
  }
];
```

4. Open sandbox

```
cd backend
npm init -y
yarn add express
node server.js
```

5. Forward port 3000 (Protocol: HTTP)

#### Contract

1. Ask

`
Provide an NFT contract written in Solidity 0.8.26 that overrides the _baseURI() function, renames the private _baseURI variable to _myBaseURI, and includes a mint() function that requires only the address to be filled in, automatically assigning the tokenId by using _nextTokenId++.
`

2. Create a folder called 'contracts', then create a file named `SimpleNFT.sol`, paste the code into this file, then compile,deploy `NFTContract` to ETH Testnet with params for baseUri: `portforwardPath + "/planet/"`. For example: `https://sandbox-462b47ed7bda42c1a3e0627df87d0edd-binance-3000.uat-sandbox.chainide.com/planet/`

#### Frontend

1. Ask

`Provide an App.js file using React, which includes a connection to MetaMask using ethers.js and a function for minting an NFT (Only the "address" parameter).`

2. Init react app

```
npx create-react-app frontend -y
```

3. Then, copy generated frontend code to `frontend/src/App.js`
4. Define contractaddress and contractABI in `frontend/src/App.js`

5. Start frontend

```
cd frontend
yarn add ethers@5.7.2
yarn start
```

6. Forward port 3001 (Protocol: HTTP)
7. Open port forwarded link and start minting.
8. Github repo: [NFT-by-ChainIDE-Code-Sage-Openzeppelin-V5](https://github.com/wufengtao1/NFT-by-ChainIDE-Code-Sage-Openzeppelin-V5-)
