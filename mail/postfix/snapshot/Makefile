# $OpenBSD: Makefile,v 1.133 2006/06/04 18:11:28 jakob Exp $

VERSION=	2.3-20060601
PKGNAME=	postfix-${VERSION:S/-/./}p0

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
