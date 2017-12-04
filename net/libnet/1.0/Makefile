# $OpenBSD: Makefile,v 1.21 2017/12/04 17:56:27 espie Exp $

REV=		1.0
VERSION=	${REV}.2a
EPOCH=		0
REVISION=	5
SHARED_LIBS=	net	0.0
PKGSPEC =	libnet->=1.0v0,<1.1v0
FIX_EXTRACT_PERMISSIONS=Yes

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/deprecated/

WRKDIST=	${WRKDIR}/Libnet-1.0.2a
AUTOCONF_VERSION=2.13
MAKE_FLAGS=	LIBnet_VERSION=${LIBnet_VERSION}

post-install:
	@ln -sf libnet-1.0/libnet.so.${LIBnet_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
