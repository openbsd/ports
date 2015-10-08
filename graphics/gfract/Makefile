# $OpenBSD: Makefile,v 1.24 2015/10/08 11:28:31 jasper Exp $

COMMENT=		fractal program with GTK interface
GH_ACCOUNT=		oskusalerma
GH_PROJECT=		gfract
GH_TAGNAME=		v0.33
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME:S/v//}
REVISION=		13
DISTFILES=		${DISTNAME}.tar.gz \
			gfract-palettes-0.1.tar.gz:0
CATEGORIES=		graphics math

HOMEPAGE=		http://www.oskusoft.com/osku/gfract/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES0= 		http://distfiles.nl/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += png pthread stdc++ z

LIB_DEPENDS=		x11/gtk+2

MODULES=		devel/gettext

USE_GMAKE=		Yes

NO_TEST=		Yes

ALL_TARGET=		gfract

MAKE_FLAGS=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

post-extract:
	@cd ${WRKDIR} && mv monk2\'.map monk2.map

pre-build:
	@sed -i 's,/usr/local,${LOCALBASE},' ${WRKSRC}/main.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gfract/palettes
	${INSTALL_DATA} ${WRKDIR}/*.map ${PREFIX}/share/gfract/palettes/
	${INSTALL_DATA} ${WRKSRC}/gfract.xpm ${PREFIX}/share/gfract/
	${INSTALL_PROGRAM} ${WRKSRC}/gfract ${PREFIX}/bin/

.include <bsd.port.mk>
