# $OpenBSD: Makefile,v 1.74 2018/06/01 18:01:13 martijn Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.36
REVISION=	6

MASTER_SITES0=	https://download.suhosin.org/

FLAVORS=	no_suhosin
FLAVOR?=

SUHOSIN_V=	0.9.38

SUPDISTFILES=	suhosin-${SUHOSIN_V}.tar.gz:0

.if !${FLAVOR:Mno_suhosin}
DISTFILES+=	suhosin-${SUHOSIN_V}.tar.gz:0
PATCH_LIST=	patch-* suhosin-*
CONFIGURE_ARGS+= --enable-suhosin

pre-patch:
	@mv ${WRKDIR}/suhosin-${SUHOSIN_V} ${WRKSRC}/ext/suhosin
.endif

.include <bsd.port.mk>
