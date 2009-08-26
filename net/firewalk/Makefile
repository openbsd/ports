# $OpenBSD: Makefile,v 1.29 2009/08/26 00:34:18 sthen Exp $

COMMENT=	gateway acl scanner (via static-source port traceroute)

DISTNAME=	firewalk-0.8
PKGNAME=	${DISTNAME}p2
CATEGORIES=     net

#MASTER_SITES=	http://www.packetfactory.net/firewalk/dist/
MASTER_SITES=	http://spacehopper.org/mirrors/

#HOMEPAGE=	http://www.packetfactory.net/projects/firewalk/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet->=1.0,<1.1:net/libnet/1.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pcap

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	firewalk

WRKDIST=	${WRKDIR}/Firewalk

NO_REGRESS=	Yes

.include <bsd.port.mk>
