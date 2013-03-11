# $OpenBSD: Makefile,v 1.12 2013/03/11 01:30:28 espie Exp $

COMMENT=	PPM to Pilot bitmap converter

DISTNAME=	ppmtoTbmp-1.1
REVISION=	1
CATEGORIES=	converters graphics
HOMEPAGE=	http://www.isaac.cs.berkeley.edu/pilot/

MAINTAINER=	Josh Rivel <dorqus@bsdfreek.com>

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
