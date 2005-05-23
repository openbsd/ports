# $OpenBSD: Makefile,v 1.1 2005/05/23 23:50:40 msf Exp $

REVISION=	1.1
VERSION=	${REVISION}.2.1

WRKDIST=	${WRKDIR}/libnet
MASTER_SITES=	http://www.packetfactory.net/libnet/dist/

AUTOCONF_VERSION=	2.59
SHLIB_VERSION=	11.0
MAKE_ENV+=	SHLIB_VERSION=${SHLIB_VERSION}

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/libnet-config \
		${PREFIX}/bin/libnet-config-1.1
	@ln -sf libnet-${REVISION}/libnet.so.${SHLIB_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
