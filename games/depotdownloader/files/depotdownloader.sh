#!/bin/sh

app=
appentry=
appid=
appname=
dd_args=$@
realappname=

if $(echo "$*" | grep -qm 1 "[[:blank:]]\-dir[[:blank:]]"); then
	dirpath=""
else
	mkdir -p ~/games/steamdepots
	cd ~/games/steamdepots
	dirpath="$HOME/games/steamdepots"
fi

while [ $# -gt 0 ]; do
	case "$1" in
		-appname) appname="$2"; shift;;
	esac
	shift
done

if [ -n "$appname" ]; then
	appentry="$(ftp -Vo - https://api.steampowered.com/ISteamApps/GetAppList/v0002 \
		| grep -Eio "\{[^\{]*\"[[:blank:]]*$appname[[:blank:]]*\"")"
	appid="$(echo "$appentry" | grep -Eo '[[:digit:]]+')"
	if [ -z "$appid" ]; then
		echo "Could not find AppId for \"$appname\""
		exit 1
	fi
	realappname="$(echo "$appentry" | grep -io "$appname")"
	dirpath="$dirpath/$realappname"
	appid="-app $appid"
elif [ -n "$dirpath" ] ; then
	dirpath="$dirpath/app"
fi

dirpath=$(echo $dirpath | sed -E 's|[[:blank:]]|_|g')
dirpath="-dir $dirpath"
dd_args="$(echo "$dd_args" | sed -E "s|\-appname[[:blank:]]+$appname||g")"
MONO_PATH=/usr/local/share/depotdownloader mono \
	/usr/local/share/depotdownloader/DepotDownloader.dll $appid $dirpath $dd_args
