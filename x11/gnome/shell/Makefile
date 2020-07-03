# $OpenBSD: Makefile,v 1.190 2020/07/03 21:13:22 sthen Exp $

USE_WXNEEDED=		Yes

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
GNOME_VERSION=		3.36.3
REVISION=		0

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xfixes atk-1.0 atk-bridge-2.0 c cairo ecal-2.0
WANTLIB += edataserver-1.2 gcr-base-3 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 gjs glib-2.0 gnome-autoar-0 gnome-desktop-3
WANTLIB += gobject-2.0 graphene-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gtk-3 ical-glib intl json-glib-1.0 m mutter-6 pango-1.0
WANTLIB += pangocairo-1.0 polkit-agent-1 polkit-gobject-1 pulse
WANTLIB += pulse-mainloop-glib
WANTLIB += lib/mutter-6/mutter-clutter-6
WANTLIB += lib/mutter-6/mutter-cogl-6
WANTLIB += lib/mutter-6/mutter-cogl-pango-6

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

# sync with x11/gnome/gjs
COMPILER=		base-clang ports-gcc

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS +=	desktop-file-utils docbook gobject-introspection gtk-update-icon-cache

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS +=	devel/gsettings-desktop-schemas \
			shells/bash-completion \
			textproc/asciidoc \
			www/sassc
RUN_DEPENDS +=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		audio/pulseaudio \
			databases/evolution-data-server \
			multimedia/gstreamer1/core \
			sysutils/polkit \
			x11/gnome/autoar \
			x11/gnome/gcr \
			x11/gnome/gjs \
			x11/gnome/mutter>=3.36.0

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
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

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

post-extract:
	cp ${FILESDIR}/*.xml ${WRKSRC}/data/dbus-interfaces/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-shell
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/gnome-shell

.include <bsd.port.mk>
