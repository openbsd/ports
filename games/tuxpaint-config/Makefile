COMMENT=	graphical tool to change Tux Paint settings

DISTNAME=	tuxpaint-config-0.0.24

CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama c fltk fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangoft2-1.0 paper
WANTLIB += unibreak

SITES=		${SITE_SOURCEFORGE:=tuxpaint/}

COMPILER=	base-clang ports-gcc base-gcc

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/pango \
		print/libpaper \
		textproc/libunibreak \
		x11/fltk

RUN_DEPENDS=	devel/desktop-file-utils \
		games/tuxpaint \
		x11/gtk+4,-guic

USE_GMAKE=	Yes

MAKE_ENV +=	SYSCONFDIR=${SYSCONFDIR} CXX=${CXX}

NO_TEST=	Yes

pre-configure:
	rm -r ${WRKSRC}/obj

.include <bsd.port.mk>
