# $OpenBSD: Makefile,v 1.17 2019/07/17 14:49:20 danj Exp $

COMMENT=	PPM to Pilot bitmap converter

DISTNAME=	ppmtoTbmp-1.1
REVISION=	4
CATEGORIES=	converters graphics
HOMEPAGE=	http://www.isaac.cs.berkeley.edu/pilot/

PERMIT_PACKAGE=	Yes

WANTLIB=		c m netpbm

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/netpbm" \
		LDLIBS="-L${LOCALBASE}/lib -lnetpbm -lm"

LIB_DEPENDS=	graphics/netpbm

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Tbmptopnm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/ppmtoTbmp ${PREFIX}/bin

TEST_TARGET=	test

.include <bsd.port.mk>
