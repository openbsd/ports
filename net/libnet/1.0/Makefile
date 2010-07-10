# $OpenBSD: Makefile,v 1.8 2010/07/10 20:30:37 naddy Exp $

REV=		1.0
VERSION=	${REV}.2a
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	net	0.0

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/deprecated/

WRKDIST=	${WRKDIR}/Libnet-1.0.2a
AUTOCONF_VERSION=2.13
MAKE_FLAGS=	LIBnet_VERSION=${LIBnet_VERSION}

post-install:
	@ln -sf libnet-1.0/libnet.so.${LIBnet_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
