if [[ "$OSTYPE" == "darwin"* ]]; then
  zstyle :ssh-agent:ssh-add-agent apple-load-keychain yes
fi
