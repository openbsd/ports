# $OpenBSD: Makefile,v 1.114 2005/12/25 07:13:45 jakob Exp $

VERSION=	2.3-20051222
PKGNAME=	postfix-${VERSION:S/-/./}p0

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
