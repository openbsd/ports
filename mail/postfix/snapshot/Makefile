# $OpenBSD: Makefile,v 1.132 2006/06/03 19:53:38 brad Exp $

VERSION=	2.3-20060601

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVOR?=

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
