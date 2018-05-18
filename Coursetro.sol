pragma solidity ^0.4.18;

contract Coursetro {
    string fname;
    uint age;
    address owner;
    
    //constructor
    constructor() public{
        owner = msg.sender;
    }
    
    modifier onlyOwner(){
        //require() = if()
        require(msg.sender == owner);
        _; //run the function body
    }
    event Instructor(string name, uint age);
    
    function setInstructor(string _fname, uint _age) onlyOwner public {
        fname = _fname;
        age = _age;
        emit Instructor(_fname, _age);
    }
    
    function getInstructor() public constant returns(string, uint){
        return (fname, age);
        
    }
 }