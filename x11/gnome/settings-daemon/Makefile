# $OpenBSD: Makefile,v 1.168 2017/09/19 11:51:50 ajacoutot Exp $

# XXX gcm-dmi.c:141:2: warning: #warning Please add dmi support for your OS

COMMENT=		GNOME settings daemon

GNOME_PROJECT=		gnome-settings-daemon
GNOME_VERSION=		3.24.3
REVISION=		0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += atk-bridge-2.0 atspi avahi-client avahi-common c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 colord colordprivate
WANTLIB += cups dbus-1 epoxy execinfo expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 geoclue-2 geocode-glib gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnome-desktop-3 gnutls gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 gweather-3 harfbuzz hogweed
WANTLIB += iconv idn2 intl json-glib-1.0 lcms2 ltdl lzma unistring
WANTLIB += m nettle notify nspr4 nss3 nssutil3 ogg p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png polkit-gobject-1 pthread pthread-stubs pulse pulse-mainloop-glib
WANTLIB += smime3 sndfile softokn3 soup-2.4 sqlite3 ssl3 tasn1
WANTLIB += upower-glib vorbis vorbisenc vorbisfile xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio \
			devel/libnotify \
			geo/geocode-glib \
			graphics/colord \
			print/cups,-libs \
			security/nss \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/libgweather

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

# share/polkit-1/actions/org.gnome.settings-daemon.plugins.power.policy
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# plugins/mouse/gsd-mouse-manager.c
RUN_DEPENDS +=		x11/gnome/mousetweaks

# plugins/datetime/geoclue.c
BUILD_DEPENDS +=	geo/geoclue2
RUN_DEPENDS +=		geo/geoclue2

# libexec/gnome-settings-daemon-localeexec
RUN_DEPENDS +=		inputmethods/ibus

# plugins/power/gsd-power-manager.c; optional dependency
# cyclic dep: gnome-session -> gnome-settings-daemon -> gnome-session
#RUN_DEPENDS +=		x11/gnome/session

MODGNOME_TOOLS=		docbook gtk-update-icon-cache

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS= 	--disable-gudev \
			--disable-rfkill \
			--disable-network-manager

FAKE_FLAGS=		desktopdir=${PREFIX}/share/examples/gnome-settings-daemon/xdg/autostart \
			sysconfdir=${PREFIX}/share/examples/gnome-settings-daemon \
			DBUS_SYS_DIR=${PREFIX}/share/examples/gnome-settings-daemon/dbus-1/system.d

###
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool # libtoolize

pre-configure:
	cd ${WRKSRC} && ${SETENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi
###

post-install:
	rm ${PREFIX}/lib/gnome-settings-daemon-3.0/*.{a,la}

.include <bsd.port.mk>
