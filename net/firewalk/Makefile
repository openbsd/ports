# $OpenBSD: Makefile,v 1.23 2004/02/01 16:23:36 jose Exp $

COMMENT=	"gateway acl scanner (via static-source port traceroute)"

DISTNAME=	firewalk-0.8
CATEGORIES=     net

MASTER_SITES=	http://www.packetfactory.net/firewalk/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/firewalk/

MAINTAINER= 	Jose Nazario <jose@crimelabs.net>

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
