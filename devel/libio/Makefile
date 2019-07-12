# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:39 sthen Exp $

COMMENT=	abstraction for general data transport

DISTNAME=	libio-0.1
CATEGORIES=	devel
MASTER_SITES=	http://monkey.org/~provos/

HOMEPAGE=	http://monkey.org/~provos/libio/

# BSD
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}/libio

NO_TEST=	Yes

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA} ${WRKSRC}/libio.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/io.h ${PREFIX}/include

.include <bsd.port.mk>
