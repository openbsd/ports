# $OpenBSD: Makefile,v 1.3 2005/09/14 10:53:44 espie Exp $

REVISION=	1.0
VERSION=	${REVISION}.2a
PKGNAME=	${DISTNAME}p1

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/deprecated/

WRKDIST=	${WRKDIR}/Libnet-1.0.2a

post-install:
	@ln -sf libnet-1.0/libnet.so.0.0 \
		${PREFIX}/lib

.include <bsd.port.mk>
