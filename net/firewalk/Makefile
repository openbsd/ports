# $OpenBSD: Makefile,v 1.14 2000/06/08 20:32:35 espie Exp $

DISTNAME=	firewalk-0.8
CATEGORIES=     net
NEED_VERSION=	 1.230
MASTER_SITES=	http://www.packetfactory.net/firewalk/

MIRROR_DISTFILE=No

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/Firewalk

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'

ALL_TARGET=	firewalk

.include <bsd.port.mk>
