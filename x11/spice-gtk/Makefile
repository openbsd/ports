# $OpenBSD: Makefile,v 1.29 2016/10/15 19:05:18 jasper Exp $

COMMENT=	GTK client and libraries for SPICE remote desktop servers

DISTNAME=	spice-gtk-0.33
CATEGORIES=	x11 net

SHARED_LIBS +=  spice-client-glib-2.0     3.3 # 13.0
SHARED_LIBS +=  spice-client-gtk-3.0      2.1 # 5.0
SHARED_LIBS +=  spice-controller          1.2 # 0.0

HOMEPAGE=	http://www.spice-space.org/page/Spice-Gtk

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject crypto dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gthread-2.0 gtk-3 harfbuzz jpeg m
WANTLIB += opus orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sasl2 ssl xcb xcb-render
WANTLIB += xcb-shm z gstvideo-1.0
WANTLIB += FLAC X11-xcb Xtst execinfo gdbm json-c ogg pulse pulse-mainloop-glib
WANTLIB += sndfile vorbis vorbisenc lz4

MASTER_SITES=	${HOMEPAGE}/../../download/gtk/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

MODPY_RUNDEP=	No

BUILD_DEPENDS=	lang/vala \
		devel/gobject-introspection \
		devel/spice-protocol>=0.12.11 \
		sysutils/usbutils

RUN_DEPENDS=	devel/spice-protocol>=0.12.11 \
		sysutils/usbutils

LIB_DEPENDS=	archivers/lz4 \
		audio/opus \
		audio/pulseaudio \
		multimedia/gstreamer1/plugins-base \
		security/cyrus-sasl2 \
		x11/gtk+3

USE_GMAKE=	Yes

MODGNU_CONFIG_GUESS_DIRS= \
		${WRKSRC} \
		${WRKSRC}/spice-common

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-smartcard \
		--disable-usbredir \
		--enable-introspection \
		--enable-vala \
		--enable-gstaudio \
		--enable-lz4

# XXX: Requires new phodav port
CONFIGURE_ARGS+=--disable-webdav
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# XXX: Remove when bz is merged
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

.include <bsd.port.mk>
