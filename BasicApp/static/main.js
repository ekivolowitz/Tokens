function sendTx() {
	let address = document.getElementById('addr').value;
	let amount = document.getElementById('amount').value;
	// 0xf275D9Df5642c2ED1B129765D38DfF50C369c91F

	let data = {
		"from" : web3.eth.defaultAccount,
		"to" : address,
		"value" : amount
	};

	let abi = '[{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"}]';
	let contractAddress = "0xdD165610944616FB135560aBE346977A7F0a50c5";
	let contract = web3.eth.contract(abi).at(contractAddress);
	contract.transfer(address, amount, {from: data['from']});
	// web3.eth.contract(abi).sendTransaction(data, function(error, result) {
	// 	if(error) {
	// 		console.log(error);
	// 	} else {
	// 		console.log(result);
	// 	}
	// });

	// web3.eth.sendTransaction(data , function(error, result) {
	// 	if(error) {
	// 		console.log(error);
	// 	}
	// 	else {
	// 		console.log(result);
	// 	}
	// })
}