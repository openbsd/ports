# $OpenBSD: Makefile,v 1.10 2010/10/18 18:36:49 espie Exp $

REV=		1.0
VERSION=	${REV}.2a
REVISION=	2
SHARED_LIBS=	net	0.0

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/deprecated/

WRKDIST=	${WRKDIR}/Libnet-1.0.2a
AUTOCONF_VERSION=2.13
MAKE_FLAGS=	LIBnet_VERSION=${LIBnet_VERSION}
USE_GROFF =	Yes

post-install:
	@ln -sf libnet-1.0/libnet.so.${LIBnet_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
