# Makefile for:		libnids
# Version required:	1.12
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.3 2000/01/22 07:01:12 dugsong Exp $

DISTNAME=	libnids-1.13

CATEGORIES=	net

MASTER_SITES=	http://www.packetfactory.net/libnids/dist/

MAINTAINER=	dugsong@monkey.org

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

GNU_CONFIGURE=	yes

pre-install:
	chmod 755 ${WRKSRC}/mkinstalldirs

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/libnids.3.mdoc \
			${PREFIX}/man/man3/libnids.3

.include <bsd.port.mk>
