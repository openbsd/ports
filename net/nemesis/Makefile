# $OpenBSD: Makefile,v 1.5 2000/08/25 22:53:40 brad Exp $

DISTNAME=	nemesis-1.1
CATEGORIES=	net security
NEED_VERSION=	1.320
MASTER_SITES=	http://www.packetninja.net/nemesis/ \
		http://www.packetfactory.net/Projects/nemesis/

HOMEPAGE=	http://celerity.bartoli.org/nemesis/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

MAINTAINER=	halogen@nol.net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/nemesis

.include <bsd.port.mk>
