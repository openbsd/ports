# $OpenBSD: Makefile,v 1.5 2004/11/17 19:06:16 nick Exp $

COMMENT=	"PPM to Pilot bitmap converter"

DISTNAME=	ppmtoTbmp-1.1
CATEGORIES=	converters graphics
HOMEPAGE=	http://www.isaac.cs.berkeley.edu/pilot/

MAINTAINER=	Josh Rivel <dorqus@bsdfreek.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDLIBS="-L${LOCALBASE}/lib -lpnm -lppm -lpgm -lpbm"

LIB_DEPENDS=	pnm,ppm,pgm,pbm::graphics/netpbm

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Tbmptopnm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/ppmtoTbmp ${PREFIX}/bin

REGRESS_TARGET=	test

.include <bsd.port.mk>
