# $OpenBSD: Makefile,v 1.3 2005/12/31 14:03:28 steven Exp $

REVISION=	1.1
VERSION=	${REVISION}.2.1
SHARED_LIBS=	net	11.0

WRKDIST=	${WRKDIR}/libnet
MASTER_SITES=	http://www.packetfactory.net/libnet/dist/

AUTOCONF_VERSION=	2.59
MAKE_FLAGS=	LIBnet_VERSION=${LIBnet_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}
CONFIGURE_ENV=	LIBNET_CONFIG_LIBS="-L${LOCALBASE}/lib/libnet-1.1" \
		LIBNET_CONFIG_CFLAGS="-I${LOCALBASE}/include/libnet-1.1"

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/libnet-config \
		${PREFIX}/bin/libnet-config-1.1
	@ln -sf libnet-${REVISION}/libnet.so.${LIBnet_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
