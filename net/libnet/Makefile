# $OpenBSD: Makefile,v 1.15 2000/06/25 00:32:58 brad Exp $

DISTNAME=	libnet-1.0.1b
CATEGORIES=	net
NEED_VERSION=	1.301
MASTER_SITES=	http://www.packetfactory.net/Projects/libnet/dist/

HOMEPAGE=	http://www.packetfactory.net/Projects/libnet/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/Libnet-1.0.1b

post-install:
	@rm -f ${PREFIX}/lib/libpwrite

.include <bsd.port.mk>
