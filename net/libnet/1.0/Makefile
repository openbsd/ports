# $OpenBSD: Makefile,v 1.6 2008/01/04 17:48:37 espie Exp $

REVISION=	1.0
VERSION=	${REVISION}.2a
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	net	0.0

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/deprecated/

WRKDIST=	${WRKDIR}/Libnet-1.0.2a
AUTOCONF_VERSION=2.13
MAKE_FLAGS=	LIBnet_VERSION=${LIBnet_VERSION}

post-install:
	@ln -sf libnet-1.0/libnet.so.${LIBnet_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
