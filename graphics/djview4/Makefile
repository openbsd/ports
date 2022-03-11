COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview-4.10.6
PKGNAME=	${DISTNAME:S/djview/djview4/}
REVISION=	7
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5PrintSupport Qt5Widgets c djvulibre glib-2.0 iconv
WANTLIB += intl m pcre tiff

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

MODULES=	x11/qt5

LIB_DEPENDS=	graphics/djvulibre

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=		-with-tiff=${LOCALBASE}

CONFIGURE_ENV+=	QTDIR="${MODQT_QTDIR}" \
		CPPFLAGS="-I${X11BASE}/include"

MAKE_ENV+=	V=1

NO_TEST=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
