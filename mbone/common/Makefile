# $OpenBSD: Makefile,v 1.21 2004/11/14 12:49:46 espie Exp $

COMMENT=	"common library functions used by the UCL multicast utils"

DISTNAME=	common-1.0.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mbone

MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tcl80.1.5:tcl->=8.0,<8.1:lang/tcl/8.0 \
		tk80.1.5:tk->=8.0,<8.1:x11/tk/8.0

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/common

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib

.include <bsd.port.mk>
