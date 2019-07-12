# $OpenBSD: Makefile,v 1.68 2019/07/12 20:51:12 sthen Exp $

PORTROACH=		limit:^2\.20

COMMENT=		collection of theme engines for GTK+2

GNOME_PROJECT=		gtk-engines
GNOME_VERSION=		2.20.2
EXTRACT_SUFX=		.tar.bz2

# warning: PKGNAME does not default to ${DISTNAME}
PKGNAME=		gtk-engines2-${GNOME_VERSION}
REVISION=		11

CATEGORIES=		x11

# LGPLv2.1/GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread ${COMPILER_LIBCXX} xcb
WANTLIB += xcb-render xcb-shm z fribidi

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	x11/gtk+2

MODULES=		x11/gnome

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	--disable-lua

# nm: unknown option -- D
NO_TEST=	       Yes

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.a

.include <bsd.port.mk>
