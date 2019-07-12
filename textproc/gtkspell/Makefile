# $OpenBSD: Makefile,v 1.55 2019/07/12 20:49:58 sthen Exp $

PORTROACH+=	limit:^2

COMMENT=	gtk+2 spelling checker
DISTNAME=	gtkspell-2.0.16

SHARED_LIBS=	gtkspell 1.0 # .0.0

REVISION=	13

CATEGORIES=	textproc x11

HOMEPAGE=	http://gtkspell.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm enchant
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread ${COMPILER_LIBCXX}
WANTLIB += xcb xcb-render xcb-shm z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkspell/}

USE_GMAKE=	Yes

MODULES=	textproc/intltool

LIB_DEPENDS=	textproc/enchant \
		x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
