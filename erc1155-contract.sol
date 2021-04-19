
pragma solidity ^0.6.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";

contract ERC1155Basic is ERC1155 {
    
    uint256 public COUNTER; // все должно быть приватным
    uint256 public my_contract_number_erc20;
    uint256 public  my_contract_token721_id;

    constructor() public ERC1155("https://lera.github.hosting/api/item/{id}.json") { //обращение по api(что-то на стороне сервака будет ловить запрос
        
        COUNTER = 0;
    }
        

    function create_erc1155_token(number_erc20, token721_id) public { //надо понять как сделать приватной позже    
         my_contract_number_erc20 = number_erc20;
	my_contract_token721_id =  token721_id;
        COUNTER++;    
	_mint(msg.sender, COUNTER, 1, "");  //в api  нало прописать  создание стандартной json формы
		   
    }


       
}