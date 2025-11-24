USE_WXNEEDED=		Yes

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
# check/fix CONFIGURE_ARGS (-Dgnome_shell_version=XX) in x11/arc-theme on
# major upgrade;
GNOME_VERSION=		49.2

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xext Xfixes atk-1.0 atk-bridge-2.0 c cairo ecal-2.0
WANTLIB += edataserver-1.2 gcr-4 gdk_pixbuf-2.0 gio-2.0 girepository-2.0
WANTLIB += gjs glib-2.0 gnome-autoar-0 gnome-desktop-4 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 ical-glib intl json-glib-1.0 m mutter-17
WANTLIB += pango-1.0 polkit-agent-1 polkit-gobject-1 pulse pulse-mainloop-glib
WANTLIB += soup-3.0
WANTLIB += lib/mutter-17/mutter-clutter-17
WANTLIB += lib/mutter-17/mutter-cogl-17
WANTLIB += lib/mutter-17/mutter-mtk-17

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODGNOME_TOOLS +=	desktop-file-utils docbook gobject-introspection gtk-update-icon-cache

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			shells/bash-completion

# rst2man
BUILD_DEPENDS +=	textproc/py-docutils

RUN_DEPENDS +=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		audio/pulseaudio \
			databases/evolution-data-server \
			sysutils/polkit \
			x11/gnome/autoar \
			x11/gnome/gcr4 \
			x11/gnome/gjs \
			x11/gnome/mutter>=46 \
			x11/gtk+4

# configure looks for gnome-keybindings.pc;
# system.js, backgroundMenu.js, network.js, remoteSearch.js
BUILD_DEPENDS +=	x11/gnome/control-center
RUN_DEPENDS +=		x11/gnome/control-center

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# gnome-shell-extension-tool, gnome-shell-perf-tool
RUN_DEPENDS +=		devel/py-gobject3

# Don't depend on evolution to lower down the amount of dependencies and
# because most users want to be able to choose their PIM. Evolution can
# be installed separately or as part of the "gnome-extra" meta-package.
#RUN_DEPENDS +=		mail/evolution

# polkitAgent.js, endSessionDialog.js, screenShield.js, status/system.js,
# unlockDialog.js, userWidget.js
RUN_DEPENDS +=		sysutils/accountsservice

# dateMenu.js
RUN_DEPENDS +=		x11/gnome/clocks

# weather.js
RUN_DEPENDS +=		x11/gnome/weather

# yelp.desktop menu entry (from yelp: OnlyShowIn=GNOME;Unity;)
# prevents => The URI "help:gnome-help/index" does not point to a valid page.
RUN_DEPENDS +=		x11/gnome/user-docs

# js/ui/status/keyboard.js
RUN_DEPENDS +=		x11/gnome/tecla

# add required introspection libs that are not in the dependency chain
RUN_DEPENDS +=		inputmethods/ibus \
			x11/gnome/gdm

CONFIGURE_ARGS +=	-Dnetworkmanager=false \
			-Dsystemd=false \
			-Dportal_helper=false \
			-Dtests=false

# XXX camera monitor& screenscast; needs libcamera support in pipewire
CONFIGURE_ARGS +=	-Dcamera_monitor=false
#LIB_DEPENDS +=		multimedia/pipewire/pipewire,-libs \
# needs libgstpipewire.so for screencast recorder
#RUN_DEPENDS +=		multimedia/pipewire/pipewire

# don't add -L/usr/local/lib to LDFLAGS: libgvc.so will conflict (undefined
# symbols) with /usr/local/lib/libgvc.so from graphviz if it's installed
MODGNOME_LDFLAGS=	No

# /gnome-shell-3.18.4_writes_to_HOME
PORTHOME=		${WRKDIR}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-extract:
	cp ${FILESDIR}/*.xml ${WRKSRC}/data/dbus-interfaces/
# https://gitlab.gnome.org/GNOME/gnome-shell/-/commit/f3911151da7b0e3c630011cb26bd85f719e531d2;
# see patch-data_meson_build, patch-data_org_gnome_Shell_desktop_in_in
	mv ${WRKSRC}/data/org.gnome.Shell.Extensions.desktop.in \
		${WRKSRC}/data/org.gnome.Shell.Extensions.desktop.in.in
	mv ${WRKSRC}/data/org.gnome.Shell.PortalHelper.desktop.in \
		${WRKSRC}/data/org.gnome.Shell.PortalHelper.desktop.in.in

.include <bsd.port.mk>
