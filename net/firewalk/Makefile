# $OpenBSD: Makefile,v 1.19 2001/05/06 04:59:59 lebel Exp $

COMMENT=	"gateway acl scanner (via static-source port traceroute)"

DISTNAME=	firewalk-0.8
CATEGORIES=     net
NEED_VERSION=	1.402
MASTER_SITES=	http://www.packetfactory.net/firewalk/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	firewalk

WRKDIST=	${WRKDIR}/Firewalk

.include <bsd.port.mk>
