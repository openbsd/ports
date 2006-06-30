# $OpenBSD: Makefile,v 1.138 2006/06/30 15:33:58 jakob Exp $

VERSION=	2.3-RC1
DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION:S/-/./}

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
