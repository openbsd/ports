# $OpenBSD: Makefile,v 1.18 2001/02/26 03:28:03 brad Exp $

DISTNAME=	firewalk-0.8
CATEGORIES=     net
NEED_VERSION=	1.336
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
