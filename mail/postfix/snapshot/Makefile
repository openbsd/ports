# $OpenBSD: Makefile,v 1.141 2006/07/05 06:29:42 jakob Exp $

VERSION=	2.3-RC5
DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION:S/-/./}

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
