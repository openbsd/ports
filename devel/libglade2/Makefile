# $OpenBSD: Makefile,v 1.59 2019/07/12 20:44:38 sthen Exp $

COMMENT=		library for loading GLADE interface files at runtime

GNOME_VERSION=		2.6.4
GNOME_PROJECT=		libglade
EXTRACT_SUFX=		.tar.bz2

PKGNAME=		libglade2-${GNOME_VERSION}
EPOCH=			0
REVISION=		17

SHARED_LIBS +=  glade-2.0            1.0      # 1.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm xml2 z

MODULES=		lang/python \
			x11/gnome

LIB_DEPENDS=		x11/gtk+2 \
			textproc/libxml

CONFIGURE_STYLE= 	gnu

TEST_IS_INTERACTIVE=	x11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/libglade2.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
