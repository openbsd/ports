# $OpenBSD: Makefile,v 1.3 2004/05/15 15:19:20 sturm Exp $

COMMENT=		"tool to monitor interface bandwidth usage"

DISTNAME=		ifstat-1.1
CATEGORIES=		net

HOMEPAGE=		http://gael.roualland.free.fr/ifstat/

MAINTAINER=		Johan Fredin <griffin@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=		Yes

FLAVORS=		snmp
FLAVOR?=

.if ${FLAVOR:L} == "snmp"
LIB_DEPENDS=		snmp::net/ucd-snmp
CONFIGURE_ARGS+=	--with-snmp=${LOCALBASE}
CONFIGURE_ENV+=		LIBS="-ldes"
.else
CONFIGURE_ARGS+=	--without-snmp
.endif

.include <bsd.port.mk>
