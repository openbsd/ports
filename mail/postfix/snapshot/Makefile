# $OpenBSD: Makefile,v 1.134 2006/06/07 05:36:35 jakob Exp $

VERSION=	2.3-20060605
DISTNAME=	postfix-${VERSION}-milter
PKGNAME=	postfix-${VERSION:S/-/./}

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
