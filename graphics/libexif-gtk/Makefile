# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:02 sthen Exp $

COMMENT=	gtk+2 interface to libexif

DISTNAME=	libexif-gtk-0.4.0
REVISION=	2

SHARED_LIBS +=  exif-gtk             1.0      # 6.0

CATEGORIES=	graphics

HOMEPAGE=	http://libexif.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo exif expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}


LIB_DEPENDS=	x11/gtk+2 \
		graphics/libexif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# checking how to link with libintl... /usr/local/lib/libintl.a ...
# (we want -lintl)
MAKE_FLAGS=	INTLLIBS='$$(LTLIBINTL)'

.include <bsd.port.mk>
