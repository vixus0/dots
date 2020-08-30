# login
if status is-login
  test -d $HOME/.local/bin; and set -x -p --path PATH $HOME/.local/bin
end

# sway
command -v sway 2>/dev/null
and if test -z "$DISPLAY" -a "$XDG_VTNR" -eq 1
  set -x WLR_DRM_DEVICES /dev/dri/card0
  set -x XKB_DEFAULT_LAYOUT gb
  exec sway
end

# use vim keybindings
fish_vi_key_bindings
