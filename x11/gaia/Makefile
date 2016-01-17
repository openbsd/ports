# $OpenBSD: Makefile,v 1.18 2016/01/17 17:29:11 sthen Exp $

COMMENT=	3D earth viewer with GPS support

DISTNAME=	gaia-0.1.2
REVISION=	9
CATEGORIES=	x11 geo

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gaia-clean.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaia-clean/}

WANTLIB +=	GL GLU c crypto idn m pthread ssl stdc++ z
WANTLIB +=	SDL gps curl nghttp2 png jpeg

MODULES=	devel/scons
MODSCONS_FLAGS=	prefix=${PREFIX} \
		datadir=share/gaia \
		gpsd=1

NO_TEST=	Yes
LIB_DEPENDS=	devel/sdl \
		misc/gpsd \
		net/curl \
		graphics/png \
		graphics/jpeg

SUBST_VARS +=	CFLAGS CXXFLAGS CC CXX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/SConstruct

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gaia ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gaia
	${INSTALL_DATA} ${WRKBUILD}/data/font.png ${PREFIX}/share/gaia
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gaia
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/gaia

.include <bsd.port.mk>
