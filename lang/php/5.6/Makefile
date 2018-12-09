# $OpenBSD: Makefile,v 1.92 2018/12/09 21:01:03 ajacoutot Exp $

# XXX fix build with icu >=5.9.1 (remove at next update?)
CXXFLAGS +=	-DU_USING_ICU_NAMESPACE=1

PV=		5.6
V=		${PV}.38
REVISION=	5

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
