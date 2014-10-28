# $OpenBSD: Makefile,v 1.13 2014/10/28 08:18:30 jasper Exp $

COMMENT=	PPM to Pilot bitmap converter

DISTNAME=	ppmtoTbmp-1.1
REVISION=	2
CATEGORIES=	converters graphics
HOMEPAGE=	http://www.isaac.cs.berkeley.edu/pilot/

MAINTAINER=	Josh Rivel <josh@rivels.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m netpbm

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDLIBS="-L${LOCALBASE}/lib -lnetpbm -lm"

LIB_DEPENDS=	graphics/netpbm

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Tbmptopnm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/ppmtoTbmp ${PREFIX}/bin

TEST_TARGET=	test

.include <bsd.port.mk>
