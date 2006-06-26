# $OpenBSD: Makefile,v 1.137 2006/06/26 18:51:13 jakob Exp $

VERSION=	2.3-20060616
DISTNAME=	postfix-${VERSION}-nonprod
PKGNAME=	postfix-${VERSION:S/-/./}p0

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
