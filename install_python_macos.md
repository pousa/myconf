```
brew install pyenv
pyenv install -l
# pick a version to install
pyenv install 3.x.x

#add to .zshrc
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
```

## Cherry on top


```
brew install jupyter
```
