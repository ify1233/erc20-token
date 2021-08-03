pragma solidity 0.8.0;
contract IFYTOKEN{
    
    string name ='ifycoin';
    string symbol ='IFY';
    
    uint totalsupply;
    mapping (address=>uint) balanceof;

    constructor(uint _initialsupply)public{
        balanceof[msg.sender]=_initialsupply;
        totalsupply=_initialsupply;
    }
    
    // function balance()public view returns(uint){
    //     return balanceof[msg.sender];
    // }
    function transfer(address _to,uint _value)public returns(bool sucess){
        require(balanceof[msg.sender]>=_value);
        balanceof[msg.sender]-=_value;
        balanceof[_to]+=_value;
    }
    
}