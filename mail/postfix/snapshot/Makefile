# $OpenBSD: Makefile,v 1.140 2006/07/05 06:21:09 jakob Exp $

VERSION=	2.3-RC3
DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION:S/-/./}p0

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
