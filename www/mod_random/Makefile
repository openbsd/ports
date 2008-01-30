# $OpenBSD: Makefile,v 1.8 2008/01/30 19:20:33 okan Exp $

COMMENT=	Apache module that provides randomized services

DISTNAME=	mod_random-1.4
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www

HOMEPAGE=	http://tangent.org/
MASTER_SITES=	http://download.tangent.org/
MODULES+=	apache-module

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=	random

NO_REGRESS=	Yes
APXS=		/usr/sbin/apxs

do-build:
	cd ${WRKSRC} && \
		${APXS} -c -o mod_random.so mod_random.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_random
	${INSTALL_DATA} ${WRKSRC}/faq.html ${PREFIX}/share/doc/mod_random
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
