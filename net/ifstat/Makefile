# $OpenBSD: Makefile,v 1.1.1.1 2003/11/22 22:42:30 jolan Exp $

COMMENT=		"tool to monitor interface bandwidth usage"

DISTNAME=		ifstat-1.0
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

CONFIGURE_ARGS+=	--without-snmp

.include <bsd.port.mk>
