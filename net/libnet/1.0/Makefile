# $OpenBSD: Makefile,v 1.4 2005/11/03 18:28:56 naddy Exp $

REVISION=	1.0
VERSION=	${REVISION}.2a
PKGNAME=	${DISTNAME}p1

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/deprecated/

WRKDIST=	${WRKDIR}/Libnet-1.0.2a
AUTOCONF_VERSION=2.13

post-install:
	@ln -sf libnet-1.0/libnet.so.0.0 \
		${PREFIX}/lib

.include <bsd.port.mk>
