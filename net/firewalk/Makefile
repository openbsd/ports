# $OpenBSD: Makefile,v 1.7 1999/05/18 17:58:33 dugsong Exp $

DISTNAME=	firewalk-0.8
CATEGORIES=     net
MASTER_SITES=	http://www.packetfactory.net/firewalk/

MIRROR_DISTFILE=no

MAINTAINER=	dugsong@monkey.org

WRKSRC=		${WRKDIR}/Firewalk

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

GNU_CONFIGURE=	yes

ALL_TARGET=	firewalk

.include <bsd.port.mk>
