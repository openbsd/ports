# $OpenBSD: Makefile,v 1.4 1999/05/16 04:46:39 brad Exp $
# $FreeBSD: Makefile,v 1.2 1999/03/28 11:55:25 rse Exp $

DISTNAME=	mm-1.0.3
CATEGORIES=	devel
MASTER_SITES=	http://www.engelschall.com/sw/mm/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	@cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
