#!/usr/bin/env bash
# Base16 Atelier Seaside - Gnome Terminal color scheme install script
# Bram de Haan (http://atelierbram.github.io/syntax-highlighting/atelier-schemes/seaside/)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Atelier Seaside"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-atelierseaside"
[[ -z "$GCONFTOOL" ]] && GCONFTOOL=gconftool
[[ -z "$BASE_KEY" ]] && BASE_KEY=/apps/gnome-terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

gset() {
  local type="$1"; shift
  local key="$1"; shift
  local val="$1"; shift

  "$GCONFTOOL" --set --type "$type" "$PROFILE_KEY/$key" -- "$val"
}

# Because gconftool doesn't have "append"
glist_append() {
  local type="$1"; shift
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$GCONFTOOL" --get "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "$val"
    } | head -c-1 | tr "\n" ,
  )"

  "$GCONFTOOL" --set --type list --list-type $type "$key" "[$entries]"
}

# Append the Base16 profile to the profile list
glist_append string /apps/gnome-terminal/global/profile_list "$PROFILE_SLUG"

gset string visible_name "$PROFILE_NAME"
gset string palette "#131513:#e6193c:#29a329:#c3c322:#3d62f5:#ad2bee:#1999b3:#8ca68c:#687d68:#87711d:#242924:#5e6e5e:#809980:#cfe8cf:#e619c3:#f0fff0"
gset string background_color "#131513"
gset string foreground_color "#8ca68c"
gset string bold_color "#8ca68c"
gset bool   bold_color_same_as_fg "true"
gset bool   use_theme_colors "false"
gset bool   use_theme_background "false"
