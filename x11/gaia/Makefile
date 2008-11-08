# $OpenBSD: Makefile,v 1.7 2008/11/08 13:15:43 ajacoutot Exp $

COMMENT=	3D earth viewer with GPS support

DISTNAME=	gaia-0.1.2
PKGNAME=	${DISTNAME}p4
CATEGORIES=	x11 geo

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gaia-clean.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaia-clean/}

WANTLIB=	GL GLU c crypto idn m pthread ssl stdc++ z

MODULES=	devel/scons
MODSCONS_FLAGS=	prefix=${PREFIX} \
		datadir=share/gaia \
		gpsd=1

USE_X11=	Yes
NO_REGRESS=	Yes
LIB_DEPENDS=	SDL.>=6::devel/sdl \
		gps.>=16::misc/gpsd \
		curl.>=4::net/curl \
		png.>=5::graphics/png \
		jpeg.>=62::graphics/jpeg

pre-configure:
	perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g;' \
		-e 's,!!CXXFLAGS!!,${CXXFLAGS},g;' \
		-e 's,!!CC!!,${CC},g;' \
		-e 's,!!CXX!!,${CXX},g;' \
		-e 's,!!PREFIX!!,${PREFIX},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!X11BASE!!,${X11BASE},g;' \
		${WRKSRC}/SConstruct

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gaia ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gaia
	${INSTALL_DATA} ${WRKBUILD}/data/font.png ${PREFIX}/share/gaia
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gaia
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/gaia

.include <bsd.port.mk>
