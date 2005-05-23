# $OpenBSD: Makefile,v 1.1 2005/05/23 23:50:39 msf Exp $

REVISION=	1.0
VERSION=	${REVISION}.2a

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/deprecated/

WRKDIST=	${WRKDIR}/Libnet-1.0.2a

post-install:
	@ln -sf libnet-1.0/libnet.so.0.0 \
		${PREFIX}/lib

.include <bsd.port.mk>
