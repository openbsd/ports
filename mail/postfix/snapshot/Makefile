# $OpenBSD: Makefile,v 1.120 2006/02/07 19:50:45 brad Exp $

VERSION=	2.3-20060207

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
