# $OpenBSD: Makefile,v 1.139 2006/07/03 09:51:19 jakob Exp $

VERSION=	2.3-RC3
DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION:S/-/./}

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
