# $OpenBSD: Makefile,v 1.1.1.1 2001/06/01 05:41:32 shell Exp $

COMMENT=	"PPM to Pilot bitmap converter"

DISTNAME=	ppmtoTbmp-1.1
CATEGORIES=	converters graphics
NEED_VERSION=	1.413
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

BUILD_DEPENDS=		xbmtopbm::graphics/netpbm

.include <bsd.port.mk>
