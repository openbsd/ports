# Makefile for:		libnids
# Version required:	1.12
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/11/13 20:22:17 dugsong Exp $

DISTNAME=	libnids-1.12

CATEGORIES=	net

MASTER_SITES=	http://www.packetfactory.net/libnids/dist/

MAINTAINER=	dugsong@monkey.org

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

NO_CONFIGURE=	yes

do-install:
		${INSTALL_DATA} ${WRKSRC}/src/libnids.a ${PREFIX}/lib
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libnids
		${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libnids
		${INSTALL_DATA} ${WRKSRC}/MISC ${PREFIX}/share/doc/libnids
		${INSTALL_DATA} ${WRKSRC}/doc/API ${PREFIX}/share/doc/libnids
		${INSTALL_DATA} ${WRKSRC}/doc/TESTS ${PREFIX}/share/doc/libnids

.include <bsd.port.mk>
