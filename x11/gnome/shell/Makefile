USE_WXNEEDED=		Yes

COMMENT=		next generation GNOME shell

# !!! check/fix CONFIGURE_ARGS (-Dgnome_shell_version=XX) in x11/arc-theme on
# major upgrade
GNOME_PROJECT=		gnome-shell
# sync with meta/gnome "V" variable
GNOME_VERSION=		43.3

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xfixes atk-1.0 atk-bridge-2.0 c cairo ecal-2.0
WANTLIB += edataserver-1.2 gcr-4 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 gjs glib-2.0 gnome-autoar-0 gnome-desktop-3
WANTLIB += gobject-2.0 graphene-1.0 gtk-3 gtk-4 ical-glib intl
WANTLIB += json-glib-1.0 m mutter-11 pango-1.0 pangocairo-1.0
WANTLIB += polkit-agent-1 polkit-gobject-1 pulse pulse-mainloop-glib
WANTLIB += lib/mutter-11/mutter-clutter-11
WANTLIB += lib/mutter-11/mutter-cogl-11
WANTLIB += lib/mutter-11/mutter-cogl-pango-11

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

COMPILER=		base-clang ports-gcc

MODGNOME_TOOLS +=	desktop-file-utils docbook gobject-introspection gtk-update-icon-cache

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS +=	devel/gsettings-desktop-schemas \
			shells/bash-completion

RUN_DEPENDS +=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		audio/pulseaudio \
			databases/evolution-data-server \
			sysutils/polkit \
			x11/gnome/autoar \
			x11/gnome/gcr4 \
			x11/gnome/gjs \
			x11/gnome/mutter \
			x11/gtk+4


# convenience dependencies for gnome-shell consumers;
# defaults set in gsettings-desktop-schema:
#     org.gnome.desktop.background.gschema.xml
#     org.gnome.desktop.interface.gschema.xml
RUN_DEPENDS +=		fonts/adobe-fonts/source-code-pro \
			fonts/cantarell-fonts \
			x11/gnome/backgrounds

# configure looks for gnome-keybindings.pc;
# system.js, backgroundMenu.js, network.js, remoteSearch.js
BUILD_DEPENDS +=	x11/gnome/control-center
RUN_DEPENDS +=		x11/gnome/control-center

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

# js/ui/components/telepathyClient.js
RUN_DEPENDS +=		net/telepathy/telepathy-glib
RUN_DEPENDS +=		net/telepathy/telepathy-logger

# weather.js
RUN_DEPENDS +=		x11/gnome/weather

# yelp.desktop menu entry (from yelp: OnlyShowIn=GNOME;Unity;)
# prevents => The URI "help:gnome-help/index" does not point to a valid page.
RUN_DEPENDS +=		x11/gnome/user-docs

# gkbd-keyboard-display
RUN_DEPENDS +=		x11/gnome/libgnomekbd

# add required introspection libs that are not in the dependency chain
RUN_DEPENDS +=		inputmethods/ibus \
			x11/gnome/gdm

CONFIGURE_ARGS +=	-Dnetworkmanager=false \
			-Dsystemd=false \
			-Dtests=false

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

# /gnome-shell-3.18.4_writes_to_HOME
PORTHOME=		${WRKDIR}

post-extract:
	cp ${FILESDIR}/*.xml ${WRKSRC}/data/dbus-interfaces/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-shell
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/gnome-shell

.include <bsd.port.mk>
