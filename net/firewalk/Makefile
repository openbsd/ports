# $OpenBSD: Makefile,v 1.9 2000/02/12 06:30:01 turan Exp $

DISTNAME=	firewalk-0.8
CATEGORIES=     net
MASTER_SITES=	http://www.packetfactory.net/firewalk/
NEED_VERSION=	1.191

MIRROR_DISTFILE=no

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

WRKDIST=		${WRKDIR}/Firewalk

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

GNU_CONFIGURE=	yes

ALL_TARGET=	firewalk

.include <bsd.port.mk>
