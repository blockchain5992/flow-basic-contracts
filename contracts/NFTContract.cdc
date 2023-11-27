pub contract NFTContract {
  pub var totalSupply: UInt64

  pub resource NFT {
    pub let id: UInt64

    init() {
      // NOTE: every resource on Flow has it's own unique `uuid`. There
      // will never be resources with the same `uuid`.
      self.id = self.uuid
    }
  }

  pub fun createNFT(): @NFT {
    return <- create NFT()
  }

  init() {
    self.totalSupply = 0
  }
}