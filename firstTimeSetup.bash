echo "-------------------------------------------------------------------------------"
echo "Welcome to Nori-vim, my Neovim setup!"
echo "This script will install vim-plug for Linux/Unix (macOS), the plugin manager for my setup here which is also crucial for the plugins included with this Neovim configuration."
echo "--> vim-plug will install from https://github.com/junegunn/vim-plug"
printf "Do you wish to continue (y)? "
read choice

case $choice in
	 y)
		  echo "Installing vim-plug..."
		  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		  echo "No errors? Great! Finally, open Neovim and run :PlugInstall"
		  ;;
	*)
		echo "Invalid choice. Installation will not proceed."
		;;
esac
