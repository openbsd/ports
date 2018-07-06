# $OpenBSD: Makefile,v 1.165 2018/07/06 06:04:46 espie Exp $

USE_WXNEEDED=		Yes

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
GNOME_VERSION=		3.28.2
REVISION=		1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xfixes atk-1.0 atk-bridge-2.0 c cairo canberra
WANTLIB += canberra-gtk3 croco-0.6 ecal-1.2 edataserver-1.2 gcr-base-3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 gjs glib-2.0
WANTLIB += gobject-2.0 gstbase-1.0 gstreamer-1.0 gtk-3 ical intl
WANTLIB += json-glib-1.0 m mutter-2 pango-1.0 pangocairo-1.0 polkit-agent-1
WANTLIB += polkit-gobject-1 pulse pulse-mainloop-glib startup-notification-1

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

# sync with x11/gnome/gjs
COMPILER=		base-clang ports-clang ports-gcc

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS +=	desktop-file-utils docbook gobject-introspection

BUILD_DEPENDS +=	devel/gsettings-desktop-schemas \
			www/sassc
RUN_DEPENDS +=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		audio/pulseaudio \
			databases/evolution-data-server \
			multimedia/gstreamer1/core \
			sysutils/polkit \
			www/libcroco \
			x11/gnome/gcr \
			x11/gnome/gjs \
			x11/gnome/mutter

# configure looks for gnome-keybindings.pc;
# system.js, backgroundMenu.js, network.js, remoteSearch.js
BUILD_DEPENDS +=	x11/gnome/control-center
RUN_DEPENDS +=		x11/gnome/control-center

# onscreen keyboard
BUILD_DEPENDS +=	x11/gnome/caribou
RUN_DEPENDS +=		x11/gnome/caribou

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# gnome-shell-extension-tool, gnome-shell-perf-tool
RUN_DEPENDS +=		devel/py-gobject3,python3

# Don't depend on evolution to lower down the amount of dependencies and
# because most users want to be able to choose their PIM. Evolution can
# be installed separately or as part of the "gnome-extra" meta-package.
#RUN_DEPENDS +=		mail/evolution

# polkitAgent.js, endSessionDialog.js, screenShield.js, status/system.js,
# unlockDialog.js, userWidget.js
RUN_DEPENDS +=		sysutils/accountsservice

# dateMenu.js
RUN_DEPENDS +=		x11/gnome/clocks

# telepathyClient.js
RUN_DEPENDS +=		net/telepathy/telepathy-logger

# yelp.desktop menu entry (from yelp: OnlyShowIn=GNOME;Unity;)
# prevents => The URI "help:gnome-help/index" does not point to a valid page.
RUN_DEPENDS +=		x11/gnome/user-docs

# gkbd-keyboard-display
RUN_DEPENDS +=		x11/gnome/libgnomekbd

# add required introspection libs that are not in the dependency chain
RUN_DEPENDS +=		inputmethods/ibus \
			x11/gnome/gdm

CONFIGURE_ARGS +=	-Dnetworkmanager=false \
			-Dsystemd=false

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

# /gnome-shell-3.18.4_writes_to_HOME
PORTHOME=		${WRKDIR}

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=789937
# Generate this file upfront as it may not be created in time
# due to ninja's randomization.
pre-build:
	exec ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/ninja -C ${WRKBUILD} -v src/st/st-scroll-view-fade-generated.c

.include <bsd.port.mk>
