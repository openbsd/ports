USE_WXNEEDED=		Yes

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
# check/fix CONFIGURE_ARGS (-Dgnome_shell_version=XX) in x11/arc-theme on
# major upgrade;
GNOME_VERSION=		47.2
REVISION=		1

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xfixes atk-1.0 atk-bridge-2.0 c cairo ecal-2.0
WANTLIB += edataserver-1.2 gcr-4 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += gjs glib-2.0 gnome-autoar-0 gnome-desktop-4 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 ical-glib intl json-glib-1.0 m mutter-15
WANTLIB += pango-1.0 polkit-agent-1 polkit-gobject-1 pulse pulse-mainloop-glib
WANTLIB += lib/mutter-15/mutter-clutter-15
WANTLIB += lib/mutter-15/mutter-cogl-15
WANTLIB += lib/mutter-15/mutter-mtk-15

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

COMPILER=		base-clang ports-gcc

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

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

# /gnome-shell-3.18.4_writes_to_HOME
PORTHOME=		${WRKDIR}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-extract:
	cp ${FILESDIR}/*.xml ${WRKSRC}/data/dbus-interfaces/

.include <bsd.port.mk>
