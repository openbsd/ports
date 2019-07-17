# $OpenBSD: Makefile,v 1.19 2019/07/17 14:46:33 danj Exp $

COMMENT=		tool to monitor interface bandwidth usage

DISTNAME=		ifstat-1.1
REVISION=		5
CATEGORIES=		net

HOMEPAGE=		http://gael.roualland.free.fr/ifstat/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu dest

NO_TEST=		Yes

FLAVORS=		snmp
FLAVOR?=

.if ${FLAVOR} == "snmp"
WANTLIB +=		netsnmp
LIB_DEPENDS=		net/net-snmp
CONFIGURE_ARGS+=	--with-snmp=${LOCALBASE}
WANTLIB+=		crypto m
.else
CONFIGURE_ARGS+=	--without-snmp
.endif

.include <bsd.port.mk>
