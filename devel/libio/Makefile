# $OpenBSD: Makefile,v 1.4 2007/09/16 02:53:00 merdely Exp $

COMMENT=	abstraction for general data transport

DISTNAME=	libio-0.1
CATEGORIES=	devel
MASTER_SITES=	http://monkey.org/~provos/

HOMEPAGE=	http://monkey.org/~provos/libio/

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
