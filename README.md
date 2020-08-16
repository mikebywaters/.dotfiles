# dotfiles

```bash
LOCATION=$(curl -s https://api.github.com/repos/mikebywaters/.dotfiles/releases/latest | grep "tag_name" | awk '{print "https://github.com/mikebywaters/.dotfiles/archive/" substr($2, 2, length($2)-3) ".zip"}'); curl -L -o dotfiles.zip $LOCATION; unzip dotfiles.zip -d ~/.dotfiles; rm dotfiles.zip; cd ~/.dotfiles && UNZIP_DIR=$(find . -name .dotfiles* -type d -maxdepth 1 -print | head -n1)&& cp -R "$UNZIP_DIR/" ../.dotfiles && rm -rf $UNZIP_DIR && ./install
```