COMMENT=		GNOME music player client

GH_ACCOUNT=		DaveDavenport
GH_PROJECT=		gmpc
GH_COMMIT=		28e1441f356afb9eb2538c82ebbd392c2a8686ff

VERSION=		11.8.90pl20200215
DISTNAME=		gmpc-${VERSION}

CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi brotlicommon brotlidec c cairo
WANTLIB += cairo-gobject crypto curl dbus-1 epoll-shim epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glyr gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv idn2 intl jpeg m mpd
WANTLIB += nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png psl soup-3.0 sqlite3 ssl unistring wayland-client
WANTLIB += wayland-cursor wayland-egl xcb xcb-render xcb-shm xkbcommon
WANTLIB += xml2 z

MODULES=		textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala

USE_GMAKE=		Yes

AUTOMAKE_VERSION=	1.16
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoreconf

BUILD_DEPENDS=		x11/gob2

LIB_DEPENDS=		audio/libmpd>=11.8.90 \
			audio/glyr \
			x11/gtk+3 \
			devel/libnotify \
			devel/libsoup3

CONFIGURE_ARGS=		--disable-appindicator

#missing file, taken from previous ?
post-extract:
	cp ${FILESDIR}/Makefile.in.in ${WRKSRC}/po/

.include <bsd.port.mk>
