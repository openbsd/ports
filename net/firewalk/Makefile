# $OpenBSD: Makefile,v 1.10 2000/02/15 05:04:52 turan Exp $

DISTNAME=	firewalk-0.8
CATEGORIES=     net
MASTER_SITES=	http://www.packetfactory.net/firewalk/
NEED_VERSION=	1.191

MIRROR_DISTFILE=no

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=		${WRKDIR}/Firewalk

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

GNU_CONFIGURE=	yes

ALL_TARGET=	firewalk

.include <bsd.port.mk>
