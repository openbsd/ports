# $OpenBSD: Makefile,v 1.23 2005/02/13 14:15:37 alek Exp $

COMMENT=	"common library functions used by the UCL multicast utils"

DISTNAME=	common-1.0.6
PKGNAME=	${DISTNAME}p2
CATEGORIES=	mbone

MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/common

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib/libuclcommon.a

.include <bsd.port.mk>
