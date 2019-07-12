# $OpenBSD: Makefile,v 1.16 2019/07/12 20:47:24 sthen Exp $

COMMENT=	archive and compress your old email

VERSION=	0.9.0
DISTNAME=	archivemail-${VERSION}
CATEGORIES=	mail

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=archivemail/}

MODULES=	lang/python

SUBST_VARS=	VERSION
PKG_ARCH=	*

do-test:
		@cd ${WRKSRC} && ${MAKE_ENV} ${MODPY_BIN} ./test_archivemail

.include <bsd.port.mk>
