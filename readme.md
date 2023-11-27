#### Backend

1. ask

`
Provide an example of an NFT metadata service using the Express framework. The service should include a feature to query the details of two different planets, with the descriptions presented in a visualized manner, and return the metadata in JSON format.
`

2. Create a folder called 'backend', then add a file named `server.js` and paste the code into this file
3. You can edit metadata in this part of the code:

```js
const planets = [
  {
    id: 1,
    name: 'Planet A',
    description: 'This is Planet A. It is a beautiful blue planet with lush green forests.',
    image: 'https://example.com/planet-a.jpg'
  },
  {
    id: 2,
    name: 'Planet B',
    description: 'This is Planet B. It is a red planet with vast deserts and towering mountains.',
    image: 'https://example.com/planet-b.jpg'
  }
];
```

4. open sandbox

```
cd backend
npm init -y
yarn add express
node server.js
```

5. Forward port 3000 (Protocol: HTTP)

#### Contract

1. ask

`
Provide an NFT contract written in Solidity 0.8.23 that overrides the _baseURI() function, renames the private _baseURI variable to _myBaseURI, and includes a mint() function that requires only the address to be filled in, automatically assigning the tokenId.
`

2. Create a folder called 'contracts', then create a file named `SimpleNFT.sol`, paste the code into this file, then compile,deploy this contract to testnet with params for baseUri: `portforwardPath + "/planets/"`. For example:`https://sandbox-462b47ed7bda42c1a3e0627df87d0edd-binance-3000.uat-sandbox.chainide.com/planets/`

#### Frontend

1. ask

`Provide an App.js file using React, which includes a connection to MetaMask using ethers.js and a function for minting an NFT (Only the "address" parameter).`

2. init react app

```
npx create-react-app frontend -y
```

3. then, copy generated frontend code to `frontend/src/App.js`
4. Define contractaddress and contractABI in `frontend/src/App.js`

5. start frontend

```
cd frontend
yarn add ethers@5.7.2
yarn start
```

6. Forward port 3001 (Protocol: HTTP)
7. Open port forwarded link and start minting.
8. Github repo: https://github.com/wufengtao1/NFT-by-ChainIDE-Code-Sage
