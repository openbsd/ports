# $OpenBSD: Makefile,v 1.2 2005/05/24 06:54:20 mjc Exp $

REVISION=	1.1
VERSION=	${REVISION}.2.1

WRKDIST=	${WRKDIR}/libnet
MASTER_SITES=	http://www.packetfactory.net/libnet/dist/

AUTOCONF_VERSION=	2.59
SHLIB_VERSION=	11.0
MAKE_ENV+=	SHLIB_VERSION=${SHLIB_VERSION}
CONFIGURE_ENV=	LIBNET_CONFIG_LIBS="-L${LOCALBASE}/lib/libnet-1.1" \
		LIBNET_CONFIG_CFLAGS="-I${LOCALBASE}/include/libnet-1.1"

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/libnet-config \
		${PREFIX}/bin/libnet-config-1.1
	@ln -sf libnet-${REVISION}/libnet.so.${SHLIB_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
