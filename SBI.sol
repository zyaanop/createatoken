contract StateBankOfIndia {

    string public constant name = "StateBankOfIndia Token";
    string public constant symbol = "SBI";
    uint public totalSupply = 0;

    // Mapping for token balances
    mapping(address => uint) public balances;

    // Mint function 
    function mint (address addr, uint amount) public {
        totalSupply += amount;
        balances[addr] += amount;
    }

    // Burn function 
    function burn (address addr, uint amount) public {
        if (balances[addr] >= amount) {
            totalSupply -= amount;
            balances[addr] -= amount;
        }
      }
}