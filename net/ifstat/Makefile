# $OpenBSD: Makefile,v 1.6 2005/11/11 09:26:44 alek Exp $

COMMENT=		"tool to monitor interface bandwidth usage"

DISTNAME=		ifstat-1.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://gael.roualland.free.fr/ifstat/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=		Yes

FLAVORS=		snmp
FLAVOR?=

.if ${FLAVOR:L} == "snmp"
LIB_DEPENDS=		netsnmp.6.2::net/net-snmp
CONFIGURE_ARGS+=	--with-snmp=${LOCALBASE}
WANTLIB+=		crypto m
.else
CONFIGURE_ARGS+=	--without-snmp
.endif

.include <bsd.port.mk>
