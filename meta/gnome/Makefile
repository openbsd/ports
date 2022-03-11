COMMENT-main=		GNOME desktop meta-package (core installation)
COMMENT-extras=		GNOME desktop meta-package (world installation)

# sync with gnome-desktop GNOME_VERSION
V=			41.3
PKGNAME=		gnome-${V}

PKGNAME-main=		gnome-${V}
PKGNAME-extras=		gnome-extras-${V}

REVISION-main=		0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

MULTI_PACKAGES=		-main -extras

# GNOME spooler is CUPS (gnome-printers-panel in gnome-control-center)
# add gtk+3-cups so that gtkprint() can see native CUPS printers;
RUN_DEPENDS-main +=	x11/gtk+3,-cups

# we already depend on samba, libgdata and gnome-online-accounts
RUN_DEPENDS-main +=	x11/gnome/gvfs,-goa,
RUN_DEPENDS-main +=	x11/gnome/gvfs,-google,
RUN_DEPENDS-main +=	x11/gnome/gvfs,-smb,

# create "well known" user directories and default gtk bookmarks file
RUN_DEPENDS-main +=	x11/xdg-user-dirs-gtk

# all Avahi dependencies are already fulfilled;
# add avahi-daemon for convenience as a few GNOME apps can make use of it
RUN_DEPENDS-main +=	net/avahi

################################################################################
# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core.bst
################################################################################

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-developer-tools.bst
RUN_DEPENDS-extras +=	x11/gnome/builder \
			x11/gnome/dconf-editor \
			x11/gnome/devhelp

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-os-services.bst
RUN_DEPENDS-main +=	sysutils/accountsservice \
			sysutils/upower

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-shell.bst
RUN_DEPENDS-main +=	devel/gsettings-desktop-schemas \
			net/glib2-networking \
			x11/gnome/adwaita-icon-theme \
			x11/gnome/backgrounds \
			x11/gnome/control-center \
			x11/gnome/desktop=${V} \
			x11/gnome/gdm \
			x11/gnome/gvfs \
			x11/gnome/initial-setup \
			x11/gnome/keyring \
			x11/gnome/menus \
			x11/gnome/mutter \
			x11/gnome/orca \
			x11/gnome/session \
			x11/gnome/settings-daemon \
			x11/gnome/shell \
			x11/gnome/shell-extensions \
			x11/gnome/sushi \
			x11/gnome/tour \
			x11/gnome/user-docs

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-utilities.bst
RUN_DEPENDS-main +=	x11/gnome/calculator \
			x11/gnome/calendar \
			x11/gnome/characters \
			x11/gnome/clocks \
			x11/gnome/contacts \
			x11/gnome/eog \
			evince-*-!light:graphics/evince \
			x11/gnome/font-viewer \
			x11/gnome/gedit \
			x11/gnome/maps \
			x11/gnome/music \
			x11/gnome/nautilus \
			x11/gnome/photos \
			x11/gnome/screenshot \
			x11/gnome/terminal \
			x11/gnome/weather \
			x11/gnome/yelp
# replacement for gnome-system-monitor
RUN_DEPENDS-main +=	x11/gnome/usage

RUN_DEPENDS-extras +=	graphics/simple-scan \
			www/epiphany \
			x11/gnome/baobab \
			x11/gnome/connections \
			x11/gnome/system-monitor \
			x11/gnome/totem

################################################################################
# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core-deps.bst
################################################################################

RUN_DEPENDS-main +=	x11/gnome/grilo-plugins \
			x11/gnome/online-accounts \
			x11/gnome/tracker3-miners

################################################################################
# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/world.bst
################################################################################

RUN_DEPENDS-extras +=	inputmethods/ibus-anthy \
			mail/evolution \
			net/gupnp/igd \
			x11/gnome/books \
			x11/gnome/devel-docs \
			x11/gnome/dictionary \
			x11/gnome/documents \
			x11/gnome/file-roller \
			x11/gnome/ghex \
			x11/gnome/gitg \
			x11/gnome/notes \
			x11/gnome/seahorse \
			x11/gnome/todo \
			x11/gnome/tweaks

# gtk+2
RUN_DEPENDS-extras +=	audio/libcanberra,-gtk \
			inputmethods/ibus,-gtk2 \
			x11/gnome/caribou,-gtk2 \
			x11/gnome/themes-extra \
			x11/gtk+2,-cups

# gtk+4
RUN_DEPENDS-extras +=	inputmethods/ibus,-gtk4

# depends on -main
RUN_DEPENDS-extras +=	STEM-=${V}:${BASE_PKGPATH},-main

.include <bsd.port.mk>
