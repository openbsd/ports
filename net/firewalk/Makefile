# $OpenBSD: Makefile,v 1.24 2004/05/07 15:28:31 naddy Exp $

COMMENT=	"gateway acl scanner (via static-source port traceroute)"

DISTNAME=	firewalk-0.8
CATEGORIES=     net

MASTER_SITES=	http://www.packetfactory.net/firewalk/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/firewalk/

LIB_DEPENDS=	net::net/libnet

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	firewalk

WRKDIST=	${WRKDIR}/Firewalk

NO_REGRESS=	Yes

.include <bsd.port.mk>
