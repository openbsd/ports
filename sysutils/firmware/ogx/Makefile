FW_DRIVER=	ogx
FW_VER=		20171128
DISTNAME=	ogx-firmware-${FW_VER}

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.cavium ${PREFIX}/firmware/ogx-license
	${INSTALL_DATA} ${WRKSRC}/cavium/pki-cluster.bin \
	    ${PREFIX}/firmware/ogx-pki-cluster

.include <bsd.port.mk>
