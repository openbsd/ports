# $OpenBSD: Makefile,v 1.3 2002/03/21 20:46:24 espie Exp $

COMMENT=	"PPM to Pilot bitmap converter"

DISTNAME=	ppmtoTbmp-1.1
CATEGORIES=	converters graphics
NEED_VERSION=	1.515
MASTER_SITES=	http://www.isaac.cs.berkeley.edu/pilot/
HOMEPAGE=	http://www.isaac.cs.berkeley.edu/pilot/

MAINTAINER=	Dorqus Maximus <dorqus@bsdfreek.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Tbmptopnm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/ppmtoTbmp ${PREFIX}/bin

LIB_DEPENDS=	pnm,ppm,pgm,pbm::graphics/netpbm

REGRESS_TARGET=	test

.include <bsd.port.mk>
