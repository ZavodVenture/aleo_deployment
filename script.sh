WALLETADDRESS=""
APPNAME="helloworld_${WALLETADDRESS:4:6}"
PRIVATEKEY=""
RECORD=""

clear
echo -e "\033[0;33mStarting...\033[0m\n"
sudo apt install -y build-essential pkg-config libssl-dev curl clang gcc llvm make tmux xz-utils ufw
echo -ne "\n" | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
git clone https://github.com/AleoHQ/leo
cd leo
cargo install --path .
cd ~
git clone https://github.com/AleoHQ/snarkOS.git --depth 1
cd snarkOS
cargo install --path .
sudo ufw allow 4133/tcp
sudo ufw allow 3033/tcp
cd ~
sudo rm -r leo snarkOS
leo new "$APPNAME"
cd "$APPNAME" && leo run && cd -
PATHTOAPP=$(realpath -q $APPNAME)
cd $PATHTOAPP && cd ..
snarkos developer deploy "$APPNAME.aleo" --private-key "$PRIVATEKEY" --query "https://vm.aleo.org/api" --path "./$APPNAME/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 600000 --record "$RECORD"
clear
echo -e "\033[32mDeployment finished!\033[0m\n"
echo -e "Aleo app name: \033[33m$APPNAME\033[0m\n"
echo -e "\033[0;33mCREATED BY ZAVOD VENTURE\033[0m"
echo -e "\033[33mTelegram: \033[36mhttps://t.me/Zavod_Venture\033[0m\n"
echo -e "\033[33mDonation:\033[0m"
echo -e "\033[36m0x439c834EE3110CeF4874E94125FE950dc8E35e2b\033[33m - ERC20\033[0m"
echo -e "\033[36mTSzyryTJkmT9fiMEVBESjA4sh9SpBw16JX\033[33m - TRC20\033[0m"
