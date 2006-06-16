# $OpenBSD: Makefile,v 1.135 2006/06/16 06:26:20 brad Exp $

VERSION=	2.3-20060614
DISTNAME=	postfix-${VERSION}-nonprod
PKGNAME=	postfix-${VERSION:S/-/./}

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
