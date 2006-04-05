# $OpenBSD: Makefile,v 1.124 2006/04/05 00:59:48 brad Exp $

VERSION=	2.3-20060403

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
