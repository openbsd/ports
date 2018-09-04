# $OpenBSD: Makefile,v 1.80 2018/09/04 12:46:14 espie Exp $

PV=		5.6
V=		${PV}.37

MASTER_SITES0=	https://download.suhosin.org/
REVISION-main = 0

FLAVORS=	no_suhosin
FLAVOR?=

SUHOSIN_V=	0.9.38
PKGSTEM-main =	php-5.6

SUPDISTFILES=	suhosin-${SUHOSIN_V}.tar.gz:0

.if !${FLAVOR:Mno_suhosin}
DISTFILES+=	suhosin-${SUHOSIN_V}.tar.gz:0
PATCH_LIST=	patch-* suhosin-*
CONFIGURE_ARGS+= --enable-suhosin

pre-patch:
	@mv ${WRKDIR}/suhosin-${SUHOSIN_V} ${WRKSRC}/ext/suhosin
.endif

.include <bsd.port.mk>
