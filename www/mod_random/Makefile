# $OpenBSD: Makefile,v 1.14 2014/03/13 17:33:27 sthen Exp $

COMMENT=	Apache module that provides randomized services

REVISION=	8
DISTNAME=	mod_random-1.4
CATEGORIES=	www

HOMEPAGE=	http://tangent.org/
MASTER_SITES=	http://download.tangent.org/
MODULES+=	apache-module

# BSD 
PERMIT_PACKAGE_CDROM=	Yes

MODAPACHE_NAME=	random

NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && \
		${MODAPACHE_APXS} -c -o mod_random.so mod_random.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_random
	${INSTALL_DATA} ${WRKSRC}/faq.html ${PREFIX}/share/doc/mod_random
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
