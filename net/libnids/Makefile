# Makefile for:		libnids
# Version required:	1.12
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/03/27 21:57:52 dugsong Exp $

DISTNAME=	libnids-1.13

CATEGORIES=	net
NEED_VERSION=	 1.230

MASTER_SITES=	http://www.packetfactory.net/Projects/libnids/dist/

MAINTAINER=	dugsong@monkey.org

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

GNU_CONFIGURE=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/libnids.3.mdoc \
			${PREFIX}/man/man3/libnids.3

.include <bsd.port.mk>
