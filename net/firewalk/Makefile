# $OpenBSD: Makefile,v 1.8 2000/02/11 00:37:32 espie Exp $

DISTNAME=	firewalk-0.8
CATEGORIES=     net
MASTER_SITES=	http://www.packetfactory.net/firewalk/
NEED_VERSION=	1.191

MIRROR_DISTFILE=no

MAINTAINER=	dugsong@monkey.org

WRKDIST=		${WRKDIR}/Firewalk

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

GNU_CONFIGURE=	yes

ALL_TARGET=	firewalk

.include <bsd.port.mk>
