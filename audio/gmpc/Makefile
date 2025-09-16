COMMENT=		GNOME music player client

VERSION=		11.8.16
DISTNAME=		gmpc-${VERSION}
REVISION =		23

CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 brotlicommon brotlidec c cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv idn2 intl jpeg lzma m mpd
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png psl soup-2.4 sqlite3 unistring xcb xcb-render xcb-shm
WANTLIB += xml2 z

SITES=			https://www.musicpd.org/download/gmpc/${VERSION}/

MODULES=		textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		x11/gob2

LIB_DEPENDS=		audio/libmpd \
			x11/gtk+2 \
			devel/libsoup

CONFIGURE_ARGS=		--disable-appindicator \
			--disable-unique

# fuck you vala, for running valac without reason and generating broken code.
post-patch:
	touch ${WRKSRC}/src/gmpc_vala.stamp

.include <bsd.port.mk>
