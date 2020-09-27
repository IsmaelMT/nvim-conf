CURRENT_PATH="$(cd "$(dirname "$0")" && pwd)"

ln -fns $CURRENT_PATH/. $HOME/.config/nvim
