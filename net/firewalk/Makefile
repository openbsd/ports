# $OpenBSD: Makefile,v 1.21 2003/02/03 06:38:22 pvalchev Exp $

COMMENT=	"gateway acl scanner (via static-source port traceroute)"

DISTNAME=	firewalk-0.8
CATEGORIES=     net

MASTER_SITES=	http://www.packetfactory.net/firewalk/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/firewalk/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	firewalk

WRKDIST=	${WRKDIR}/Firewalk

NO_REGRESS=	Yes

.include <bsd.port.mk>
