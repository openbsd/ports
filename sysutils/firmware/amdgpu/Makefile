# $OpenBSD: Makefile,v 1.1.1.1 2019/01/08 02:34:50 jsg Exp $

FW_DRIVER=	amdgpu
FW_VER=		20181218
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/amdgpu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/amdgpu
	${INSTALL_DATA} ${WRKSRC}/amdgpu/*.bin \
	    ${PREFIX}/firmware/amdgpu/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.amdgpu \
	    ${PREFIX}/firmware/amdgpu/amdgpu-license

.include <bsd.port.mk>
