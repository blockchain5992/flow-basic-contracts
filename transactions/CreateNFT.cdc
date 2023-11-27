import NFTContract from  0x5ae8c64c56cfdedf

transaction() {
    prepare(signer: AuthAccount){

    }
    execute{
        signer.save(<-NFTContract.createNFT(), to: /storage/NFT1)
    }
}