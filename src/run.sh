#!/bin/sh

WATCH="${HUGO_WATCH:=false}"
HUGO_DESTINATION="${HUGO_DESTINATION:=/output}"

echo "HUGO_WATCH:" $WATCH
echo "HUGO_THEME:" $HUGO_THEME
echo "HUGO_BASEURL" $HUGO_BASEURL
echo "ARGS" $@

if [[ $HUGO_WATCH != 'false' ]]; then
  echo "Watching..."
  /usr/bin/hugo server --appendPort=false --watch=true --source="/src" --theme="$HUGO_THEME" --destination="$HUGO_DESTINATION" --baseURL="$HUGO_BASEURL" --bind="0.0.0.0" "$@"
else
 echo "Building one time..."
  /usr/bin/hugo --appendPort=false --source="/src" --theme="$HUGO_THEME" --destination="$HUGO_DESTINATION" --baseURL="$HUGO_BASEURL" "$@"
fi
