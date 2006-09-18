# $OpenBSD: Makefile,v 1.4 2006/09/18 11:50:40 espie Exp $

COMMENT=		"fractal program with GTK interface"
DISTNAME=		gfract-0.33
DISTFILES=		${DISTNAME}.tar.gz \
			gfract-palettes-0.1.tar.gz
CATEGORIES=		graphics math

HOMEPAGE=		http://www.oskusoft.com/osku/gfract/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		X11 c fontconfig freetype m stdc++ z \
			glib-2.0 gmodule-2.0 gobject-2.0 \
			atk-1.0 pango-1.0 pangoft2-1.0 \
			pangocairo-1.0 png cairo

BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=		devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes

NO_REGRESS=		Yes

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
