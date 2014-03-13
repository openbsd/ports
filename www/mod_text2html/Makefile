# $OpenBSD: Makefile,v 1.14 2014/03/13 17:33:28 sthen Exp $

COMMENT=	Apache module designed to replace text/plain handler

REVISION=	8
DISTNAME=	mod_text2html-1.0
CATEGORIES=	www

HOMEPAGE=	http://tangent.org/
MASTER_SITES=	http://download.tangent.org/
MODULES+=	apache-module

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

MODAPACHE_NAME=	text2html

NO_TEST=	Yes

do-build:
	cd ${WRKBUILD} && \
		${MODAPACHE_APXS} -c -o mod_text2html.so mod_text2html.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
