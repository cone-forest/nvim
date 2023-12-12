# Get system packages
# Install neovim
yay -S neovim

# Install programming tools
yay -S git
# lua
yay -S lua lua-language-server
# c/cpp
yay -S llvm clang clangd lldb codelldb cmake cmake-language-server clang-format cmake-lint
# rust
yay -S rustup
rustup toolchain install stable
# python
yay -S python python-pynvim python-debugpy mypy perf ueberzug
# golang
yay -S go gopls

# Install document tools
yay -S texlive-full markdown

# Get packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Start neovim and load extensions
nvim -c PackerSync
