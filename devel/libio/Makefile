# $OpenBSD: Makefile,v 1.1.1.1 2003/04/17 10:59:48 sturm Exp $

COMMENT=	"abstraction for general data transport"

DISTNAME=	libio-0.1
CATEGORIES=	devel
MASTER_SITES=	http://monkey.org/~provos/

HOMEPAGE=	http://monkey.org/~provos/libio/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/libio

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA} ${WRKSRC}/libio.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/io.h ${PREFIX}/include

.include <bsd.port.mk>
