# $OpenBSD: Makefile,v 1.7 2000/10/23 16:08:12 espie Exp $

DISTNAME=	nemesis-1.1
CATEGORIES=	net security
NEED_VERSION=	1.320
MASTER_SITES=	http://www.packetninja.net/nemesis/ \
		http://www.packetfactory.net/Projects/nemesis/

HOMEPAGE=	http://www.packetninja.net/nemesis/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

MAINTAINER=	Kyle Hargraves <halogen@nol.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/nemesis

.include <bsd.port.mk>
