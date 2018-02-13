var provider = {
    name: 'CMC',
    url: 'https://api.coinmarketcap.com/v1/ticker/garlicoin/',
    parseFn: function(raw) {
      return [{
        code: 'USD',
        value: parseFloat(raw[0].price_usd)
      }];
    }
  };
  
  module.exports = provider;
  