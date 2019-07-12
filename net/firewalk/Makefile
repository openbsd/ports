# $OpenBSD: Makefile,v 1.40 2019/07/12 20:48:26 sthen Exp $

COMMENT=	gateway acl scanner (via static-source port traceroute)

DISTNAME=	firewalk-0.8
REVISION=	3
CATEGORIES=     net
FIX_EXTRACT_PERMISSIONS=Yes

MASTER_SITES=	https://spacehopper.org/mirrors/ \
		http://packetfactory.openwall.net/firewalk/dist/

HOMEPAGE=	http://packetfactory.openwall.net/projects/firewalk/

LIB_DEPENDS=	net/libnet/1.0
WANTLIB=	c pcap lib/libnet-1.0/net=0

# BSD
PERMIT_PACKAGE=	Yes


CONFIGURE_STYLE= gnu dest

ALL_TARGET=	firewalk

WRKDIST=	${WRKDIR}/Firewalk

NO_TEST=	Yes

.include <bsd.port.mk>
