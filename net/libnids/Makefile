# Makefile for:		libnids
# Version required:	1.12
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.10 2000/04/21 14:50:46 kevlo Exp $

DISTNAME=	libnids-1.13

CATEGORIES=	net
NEED_VERSION=	 1.230

MASTER_SITES=	http://www.packetfactory.net/Projects/libnids/dist/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

GNU_CONFIGURE=	Yes
FAKE=		Yes

post-install:
	${INSTALL} ${WRKSRC}/src/libnids.a \
			${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/nids.h \
			${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/src/libnids.3.mdoc \
			${PREFIX}/man/man3/libnids.3

.include <bsd.port.mk>
