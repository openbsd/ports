REV=		1.1
VERSION=	${REV}.6
EPOCH=		0
SHARED_LIBS=	net	11.1
PKGSPEC=	libnet->=1.1v0,<1.2v0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libnet-dev/}

CONFIGURE_STYLE= gnu
MAKE_FLAGS=	LIBnet_VERSION=${LIBnet_VERSION}
CONFIGURE_ENV=	LIBNET_CONFIG_LIBS="-L${LOCALBASE}/lib/libnet-1.1" \
		LIBNET_CONFIG_CFLAGS="-I${LOCALBASE}/include/libnet-1.1"

CONFIGURE_ARGS=	--include=${PREFIX}/include/libnet-1.1 \
		--libdir=${PREFIX}/lib/libnet-1.1

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/libnet-config \
		${PREFIX}/bin/libnet-config-1.1
	@ln -sf libnet-${REV}/libnet.so.${LIBnet_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
