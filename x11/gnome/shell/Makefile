# $OpenBSD: Makefile,v 1.120 2015/05/28 10:17:25 pascal Exp $

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
GNOME_VERSION=		3.16.2
REVISION=		0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject camel-1.2
WANTLIB += canberra canberra-gtk3 clutter-1.0 cogl cogl-pango
WANTLIB += cogl-path croco-0.6 dbus-1 dbus-glib-1 ecal-1.2 edataserver-1.2
WANTLIB += execinfo expat ffi fontconfig freetype gck-1 gcr-base-3
WANTLIB += gcrypt gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += gjs glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gpg-error graphite2 gstbase-1.0 gstreamer-1.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz ical icalss icalvcal icudata icui18n
WANTLIB += icuuc json-c json-glib-1.0 ltdl m mozjs-24 mutter ncurses
WANTLIB += ncursesw nspr4 nss3 nssutil3 ogg p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png polkit-agent-1 polkit-gobject-1 pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib readline secret-1 smime3
WANTLIB += sndfile softokn3 soup-2.4 sqlite3 ssl3 startup-notification-1
WANTLIB += telepathy-glib upower-glib vorbis vorbisenc
WANTLIB += vorbisfile xcb xcb-util xcb-render xcb-shm xml2 z epoxy
WANTLIB += EGL Xau Xdmcp drm gbm glapi xcb-dri2 xcb-randr xcb-shape
WANTLIB += xcb-xfixes xcb-xkb xkbcommon xkbcommon-x11 xkbfile lzma

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

# sync with devel/spidermonkey
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c c++

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS +=	desktop-file-utils docbook gobject-introspection

BUILD_DEPENDS +=	devel/gsettings-desktop-schemas
RUN_DEPENDS +=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		audio/pulseaudio \
			databases/evolution-data-server \
			multimedia/gstreamer1/core \
			net/telepathy/telepathy-glib \
			sysutils/polkit \
			www/libcroco \
			x11/gnome/gcr \
			x11/gnome/gjs \
			x11/gnome/mutter>=3.16.2

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

CONFIGURE_ARGS=		--disable-systemd

# disable -Werror:
#     shell-glsl-quad.c:86:35: error: implicit conversion from enumeration type 'ShellSnippetHook'
#     to different enumeration type 'CoglSnippetHook' [-Werror,-Wenum-conversion]
CONFIGURE_ARGS +=	--enable-compile-warnings

post-install:
	rm ${PREFIX}/lib/gnome-shell/*.{a,la}
	rm ${PREFIX}/lib/mozilla/plugins/*.{a,la}

.include <bsd.port.mk>
