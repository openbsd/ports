# $OpenBSD: Makefile,v 1.13 2013/02/09 14:49:52 sthen Exp $

COMMENT=		tool to monitor interface bandwidth usage

DISTNAME=		ifstat-1.1
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://gael.roualland.free.fr/ifstat/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu dest
USE_GROFF =		Yes

NO_REGRESS=		Yes

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
