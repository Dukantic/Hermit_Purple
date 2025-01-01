DIR_CONF="$(pwd)/config"
DIR_HOME="$(pwd)/home"
DEST_CONF_DIR="$HOME/.config/"
DEST_HOME_DIR="$HOME"



# Link all child
for item in "$DIR_CONF"/*; do
    basename=$(basename "$item")

    if [ -d "$DEST_CONF_DIR$basename" ]; then
      mv "$DEST_CONF_DIR$basename" "$DEST_CONF_DIR$basename.old"
    fi
    ln -sf "$item" "$DEST_CONF_DIR" 
done

echo "All link done in $DEST_CONF_DIR"

for item in "$DIR_HOME"/.*; do
    basename=$(basename "$item")

    if [ -d "$DEST_HOME_DIR$basename" ]; then
      mv "$DEST_HOME_DIR$basename" "$DEST_HOME_DIR$basename.old"
    fi
    ln -sf "$item" "$DEST_HOME_DIR" 
done


echo "All link done in $DEST_HOME_DIR"
