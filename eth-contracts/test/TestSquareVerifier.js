let squareVerifier = artifacts.require('SquareVerifier');
let correctproof = require('../../zokrates/code/square/proof');

contract('TestSquareVerifier', accounts => {
    const account_one = accounts[0];

describe('test verification with correct proof', function(){
    beforeEach(async function () { 
        this.contract = await squareVerifier.new({from: account_one});
})
it('verification with correct proof',async function(){
    let verified = await this.contract.verifyTx.call(correctproof.proof.A,correctproof.proof.A_p,correctproof.proof.B,correctproof.proof.B_p,correctproof.proof.C,correctproof.proof.C_p,correctproof.proof.H,correctproof.proof.K,correctproof.input,{from:account_one});
    assert.equal(verified,true,"verification is valid");
})

it('verification with incorrect proof',async function(){
    correctproof.input=[10,1];
    let verified = await this.contract.verifyTx.call(correctproof.proof.A,correctproof.proof.A_p,correctproof.proof.B,correctproof.proof.B_p,correctproof.proof.C,correctproof.proof.C_p,correctproof.proof.H,correctproof.proof.K,correctproof.input,{from:account_one});
    assert.equal(verified,false,"verification is valid");
})
})
});