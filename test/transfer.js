var EtherBusiness = artifacts.require("EtherBusiness");

contract('EtherBusiness', function(accounts) {
  it("can transfer", function() {
    var account_one = accounts[0];
    var meta;

    return EtherBusiness.deployed().then(function(instance) {
      meta = instance;
      return meta.fund.call({from: account_one, value: 10});
    }).then(function(transaction) {
      console.log(transaction);
      return meta.getFundingBy.call(account_one);
    }).then(function(fundingBy) {
      console.log(fundingBy);
      funding_by_account = fundingBy.toNumber();
      assert.equal(funding_by_account, 10);
    })
  })
})
