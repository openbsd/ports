# $OpenBSD: Makefile,v 1.90 2018/10/24 14:28:07 sthen Exp $

PV=		5.6
V=		${PV}.38
REVISION=	4

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
