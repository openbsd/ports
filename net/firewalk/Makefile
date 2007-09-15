# $OpenBSD: Makefile,v 1.27 2007/09/15 22:36:53 merdely Exp $

COMMENT=	gateway acl scanner (via static-source port traceroute)

DISTNAME=	firewalk-0.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=     net

MASTER_SITES=	http://www.packetfactory.net/firewalk/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/firewalk/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		c pcap

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	firewalk

WRKDIST=	${WRKDIR}/Firewalk

NO_REGRESS=	Yes

.include <bsd.port.mk>
