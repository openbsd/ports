# $OpenBSD: Makefile,v 1.11 1999/09/06 16:21:13 brad Exp $
# $FreeBSD: Makefile,v 1.2 1999/03/28 11:55:25 rse Exp $

DISTNAME=	mm-1.0.11
CATEGORIES=	devel
MASTER_SITES=	http://www.engelschall.com/sw/mm/ \
		ftp://ftp.engelschall.com/sw/mm/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

test:
	@cd ${WRKSRC} && ${MAKE} test

post-build:
	@${ECHO_MSG} "===>  Use 'make test' to run a quick test suite."

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
