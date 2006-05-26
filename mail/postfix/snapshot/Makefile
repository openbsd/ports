# $OpenBSD: Makefile,v 1.131 2006/05/26 09:37:10 jakob Exp $

VERSION=	2.3-20060518
PKGNAME=	postfix-${VERSION:S/-/./}p0

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
