# $OpenBSD: Makefile,v 1.125 2006/04/07 08:17:23 jakob Exp $

VERSION=	2.3-20060403
PKGNAME=	postfix-${VERSION}p0

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
