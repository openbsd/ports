# $OpenBSD: Makefile,v 1.23 2014/09/08 17:04:51 jasper Exp $

COMMENT=		fractal program with GTK interface
DISTNAME=		gfract-0.33
REVISION=		12
DISTFILES=		${DISTNAME}.tar.gz \
			gfract-palettes-0.1.tar.gz
CATEGORIES=		graphics math

HOMEPAGE=		https://gfract.googlecode.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs stdc++ xcb z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL gthread-2.0 pthread xcb-render xcb-shm

LIB_DEPENDS=		x11/gtk+2

MODULES=		devel/gettext

USE_GMAKE=		Yes

NO_TEST=		Yes

ALL_TARGET=		gfract

MAKE_FLAGS=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

post-extract:
	@cd ${WRKDIR} && mv monk2\'.map monk2.map

pre-build:
	@perl -pi -e 's#/usr/local#${LOCALBASE}#' ${WRKSRC}/main.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gfract/palettes
	${INSTALL_DATA} ${WRKDIR}/*.map ${PREFIX}/share/gfract/palettes/
	${INSTALL_DATA} ${WRKSRC}/gfract.xpm ${PREFIX}/share/gfract/
	${INSTALL_PROGRAM} ${WRKSRC}/gfract ${PREFIX}/bin/

.include <bsd.port.mk>
