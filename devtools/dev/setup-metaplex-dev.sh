echo "[INFO] Cleaning older cache folder for metaplex"
rm -rf ./.cache
echo "[INFO] Uploading all resources"
metaplex upload ./nfts-sources --env devnet --keypair ~/.config/solana/candyfactory-devnet.json > ./logs/dev/upload-log.txt
echo "[INFO] Creating candy machine"
metaplex create_candy_machine --env devnet --keypair ~/.config/solana/candyfactory-devnet.json --price 1 > ./logs/dev/candy-machine-log.txt
echo "[INFO] Setting minting start date (goLiveDate)"
metaplex update_candy_machine -d "16 Sep 2021 00:00:00" --env devnet --keypair ~/.config/solana/candyfactory-devnet.json > ./logs/dev/candy-machine-start-date.txt

# I think we can batch upload by putting everything in here from Alb's script
# Cannot edit lines 1-8 because of how setup-envs-dev.js is written
# metaplex verify --keypair ~/.config/solana/candyfactory-devnet.json