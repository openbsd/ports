# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:43 espie Exp $

COMMENT=	Apache module designed to replace text/plain handler

REVISION=	7
DISTNAME=	mod_text2html-1.0
CATEGORIES=	www

HOMEPAGE=	http://tangent.org/
MASTER_SITES=	http://download.tangent.org/
MODULES+=	apache-module

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

MODAPACHE_NAME=	text2html

NO_TEST=	Yes

APXS=		/usr/sbin/apxs

do-build:
	cd ${WRKBUILD} && \
		${APXS} -c -o mod_text2html.so mod_text2html.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
