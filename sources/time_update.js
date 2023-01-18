const fs = require('fs');

let genesis = JSON.parse(fs.readFileSync('./genesis_simplest.json'))

genesis.CHECKPOINT_TIMESTAMP = new Date().getTime()

fs.writeFileSync('./genesis_simplest.json', JSON.stringify(genesis))

console.log('\n ==================== GENESIS IS UP TO DATE ==================== \n')