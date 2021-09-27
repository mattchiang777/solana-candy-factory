echo "[INFO] Setting Solana to use dev network"
solana config set --url https://api.devnet.solana.com

# Nuke solution
# This is the path to the keypair file in the file system
# Uncomment to create a new wallet
# echo "[INFO] Generating new wallet"
# solana-keygen new --outfile ~/.config/solana/candyfactory-devnet.json --force > ./logs/dev/new-wallet-log.txt

# echo "[INFO] Setting config to be the new wallet"
# solana config set -k ~/.config/solana/candyfactory-devnet.json

echo "[INFO] Sending airdrop"
solana airdrop 1
