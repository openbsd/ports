# $OpenBSD: Makefile,v 1.33 2019/07/12 20:46:59 sthen Exp $

COMMENT=		fractal program with GTK interface
GH_ACCOUNT=		oskusalerma
GH_PROJECT=		gfract
GH_TAGNAME=		v1.0
DISTFILES=		${DISTNAME}.tar.gz \
			gfract-palettes-0.1.tar.gz:0
CATEGORIES=		graphics math
REVISION=		2

HOMEPAGE=		http://www.oskusoft.com/osku/gfract/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 boost_filesystem boost_regex
WANTLIB += boost_system c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread
WANTLIB += ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES0= 		http://distfiles.nl/

MODULES=		lang/python

MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	make_palettes.py
# override python module CONFIGURE_STYLE
CONFIGURE_STYLE=	none # empty

LIB_DEPENDS=		devel/boost \
			x11/gtk+2

USE_GMAKE=		Yes

NO_TEST=		Yes

ALL_TARGET=		gfract

MAKE_FLAGS=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

post-extract:
	cd ${WRKDIR} && mv monk2\'.map monk2.map

pre-build:
	sed -i.beforesubst 's,/usr/local,${LOCALBASE},' ${WRKSRC}/main.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gfract/palettes
	${INSTALL_DATA} ${WRKDIR}/*.map ${PREFIX}/share/gfract/palettes/
	${INSTALL_DATA} ${WRKSRC}/gfract.xpm ${PREFIX}/share/gfract/
	${INSTALL_PROGRAM} ${WRKSRC}/gfract ${PREFIX}/bin/

.include <bsd.port.mk>
