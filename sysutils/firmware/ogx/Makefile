# $OpenBSD: Makefile,v 1.1.1.1 2019/11/04 15:15:36 visa Exp $

FW_DRIVER=	ogx
FW_VER=		20171128
DISTNAME=	ogx-firmware-${FW_VER}

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.cavium ${PREFIX}/firmware/ogx-license
	${INSTALL_DATA} ${WRKSRC}/cavium/pki-cluster.bin \
	    ${PREFIX}/firmware/ogx-pki-cluster

.include <bsd.port.mk>
