COMMENT-main=		GNOME desktop meta-package (core installation)
COMMENT-extras=		GNOME desktop meta-package (world installation)

# sync with x11/gnome/control-center MAJOR_VERSION
V=			47
PKGNAME=		gnome-${V}

PKGNAME-main=		gnome-${V}
PKGNAME-extras=		gnome-extras-${V}

REVISION-main=		0
REVISION-extras=	1

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

# all Avahi dependencies are already fulfilled;
# add avahi-daemon for convenience as a few GNOME apps can make use of it
RUN_DEPENDS-main +=	net/avahi

# ibus IM modules
RUN_DEPENDS-main +=	inputmethods/ibus,-gtk3
RUN_DEPENDS-main +=	inputmethods/ibus,-gtk4

# some elements from:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core-deps/
# that are not included in the dependency chain
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

# XXX don't depend on gnome-initial-setup; it's in the CVS Attic for now.
# Initial Setup is used to configure / create new users.
# 
# Currently, only if there is no user in the system, GDM will start Initial
# Setup (as the _gnome-initial-setup user) and configure one. This may change in
# the future and run for existing users that haven't connected to GNOME yet.
# gnome-initial-setup/gnome-initial-setup.c:324
# x11/gnome/gdm: daemon/gdm-display.c
# https://gitlab.gnome.org/GNOME/gnome-initial-setup/-/issues/12
# https://gitlab.gnome.org/GNOME/gnome-initial-setup/-/issues/120#note_1019004
# https://gitlab.gnome.org/GNOME/gnome-shell/-/issues/3749
#
# It's integration with PAM, chpasswd, /dev/dri/card* ownership etc. makes it
# difficult running on OpenBSD.
# accountsservice-WARNING **: SetPassword call failed: GDBus.Error:org.freedesktop.Accounts.Error.Failed: running '/usr/sbin/chpasswd' failed: Failed to execute child process '/usr/sbin/chpasswd' (No such file or directory)
# (gnome-initial-setup:12761): InitialSetup-WARNING **: PAM module error: Sorry, password authentication didn't work. Please try again.
#
#RUN_DEPENDS-main +=	x11/gnome/initial-setup

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-apps.bst
RUN_DEPENDS-main +=	x11/gnome/calculator \
			x11/gnome/calendar \
			x11/gnome/characters \
			x11/gnome/clocks \
			x11/gnome/console \
			x11/gnome/contacts \
			evince-*-!light:graphics/evince \
			x11/gnome/font-viewer \
			x11/gnome/maps \
			x11/gnome/music \
			x11/gnome/nautilus \
			x11/gnome/system-monitor \
			x11/gnome/text-editor \
			x11/gnome/totem \
			x11/gnome/weather \
			x11/gnome/yelp

# should be "loupe"
RUN_DEPENDS-main +=	x11/gnome/eog

# in -extras to give users an alternative choice
RUN_DEPENDS-extras +=	graphics/simple-scan \
			www/epiphany \
			x11/gnome/baobab \
			x11/gnome/connections

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-developer-tools.bst
RUN_DEPENDS-extras +=	sysutils/dspy \
			x11/gnome/builder \
			x11/gnome/dconf-editor \
			x11/gnome/devhelp

# https://gitlab.gnome.org/GNOME/gnome-build-meta/blob/master/elements/core/meta-gnome-core-mobile.bst
#RUN_DEPENDS-extras +=

################################################################################
# Add a few extras GNOME applications:
# - from the former elements/world.bst in gnome-build-meta;
# - from Circle applications at https://apps.gnome.org/
# - from https://archlinux.org/groups/x86_64/gnome-extra/
################################################################################

RUN_DEPENDS-extras +=	mail/evolution \
			x11/gnome/dictionary \
			x11/gnome/endeavour \
			x11/gnome/file-roller,-nautilus \
			x11/gnome/ghex \
			x11/gnome/gitg \
			x11/gnome/notes \
			x11/gnome/photos \
			x11/gnome/polari \
			x11/gnome/seahorse \
			x11/gnome/terminal,-nautilus \
			x11/gnome/tweaks

# depends on -main
RUN_DEPENDS-extras +=	STEM-=${V}:${BASE_PKGPATH},-main

.include <bsd.port.mk>
