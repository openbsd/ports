COMMENT-main=		GNOME desktop meta-package (core installation)
COMMENT-extras=		GNOME desktop meta-package (world installation)

# sync with x11/gnome/control-center MAJOR_VERSION
V=			46
PKGNAME=		gnome-${V}

PKGNAME-main=		gnome-${V}
PKGNAME-extras=		gnome-extras-${V}

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://www.gnome.org/

MULTI_PACKAGES=		-main -extras

# GNOME spooler is CUPS (gnome-printers-panel in gnome-control-center)
# add gtk+3-cups so that gtkprint() can see native CUPS printers;
RUN_DEPENDS-main +=	x11/gtk+3,-cups
RUN_DEPENDS-main +=	x11/gtk+4,-cups

# we already depend on samba, libgdata and gnome-online-accounts
RUN_DEPENDS-main +=	x11/gnome/gvfs,-goa,
RUN_DEPENDS-main +=	x11/gnome/gvfs,-google,
RUN_DEPENDS-main +=	x11/gnome/gvfs,-onedrive,
RUN_DEPENDS-main +=	x11/gnome/gvfs,-smb,

# create "well known" user directories and default gtk bookmarks file
RUN_DEPENDS-main +=	x11/xdg-user-dirs-gtk

# all Avahi dependencies are already fulfilled;
# add avahi-daemon for convenience as a few GNOME apps can make use of it
RUN_DEPENDS-main +=	net/avahi

# ibus IM modules
RUN_DEPENDS-main +=	inputmethods/ibus,-gtk3
RUN_DEPENDS-main +=	inputmethods/ibus,-gtk4

# elements/core-deps/
RUN_DEPENDS-main +=	sysutils/flatpak/xdg-desktop-portal \
			sysutils/flatpak/xdg-desktop-portal-gnome \
			sysutils/flatpak/xdg-desktop-portal-gtk

################################################################################
# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core.bst
################################################################################

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-os-services.bst
RUN_DEPENDS-main +=	geo/geoclue2 \
			sysutils/accountsservice \
			sysutils/upower

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-shell.bst
RUN_DEPENDS-main +=	devel/gsettings-desktop-schemas \
			net/glib2-networking \
			x11/gnome/adwaita-icon-theme \
			x11/gnome/backgrounds \
			x11/gnome/color-manager \
			x11/gnome/control-center>=${V} \
			x11/gnome/desktop \
			x11/gnome/desktop,-gtk4 \
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
			x11/gnome/tecla  \
			x11/gnome/tour \
			x11/gnome/user-docs

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-utilities.bst
RUN_DEPENDS-main +=	x11/gnome/calculator \
			x11/gnome/calendar \
			x11/gnome/characters \
			x11/gnome/clocks \
			x11/gnome/console \
			x11/gnome/contacts \
			x11/gnome/eog \
			evince-*-!light:graphics/evince \
			x11/gnome/font-viewer \
			x11/gnome/maps \
			x11/gnome/music \
			x11/gnome/nautilus \
			x11/gnome/photos \
			x11/gnome/system-monitor \
			x11/gnome/text-editor \
			x11/gnome/totem \
			x11/gnome/weather \
			x11/gnome/yelp

RUN_DEPENDS-extras +=	graphics/simple-scan \
			www/epiphany \
			x11/gnome/baobab \
			x11/gnome/connections \
			x11/gnome/system-monitor

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-developer-tools.bst
RUN_DEPENDS-extras +=	sysutils/dspy \
			x11/gnome/builder \
			x11/gnome/dconf-editor \
			x11/gnome/devhelp

################################################################################
# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/world.bst
################################################################################

RUN_DEPENDS-extras +=	devel/glade \
			mail/evolution \
			net/gupnp/igd \
			net/telepathy/telepathy-glib \
			net/telepathy/telepathy-logger \
			net/telepathy/telepathy-mission-control \
			x11/gnome/cheese \
			x11/gnome/devel-docs \
			x11/gnome/dictionary \
			x11/gnome/endeavour \
			x11/gnome/file-roller \
			x11/gnome/ghex \
			x11/gnome/gitg \
			x11/gnome/notes \
			x11/gnome/polari \
			x11/gnome/seahorse \
			x11/gnome/tweaks \
			x11/gnome/zenity

# nautilus is already in the dependency chain
RUN_DEPENDS-extras +=	x11/gnome/file-roller,-nautilus
RUN_DEPENDS-extras +=	x11/gnome/terminal,-nautilus

# depends on -main
RUN_DEPENDS-extras +=	STEM-=${V}:${BASE_PKGPATH},-main

.include <bsd.port.mk>
