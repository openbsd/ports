FW_DRIVER=	amdgpu
FW_VER=		20250708
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,\*.bin}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/amdgpu
SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/amdgpu
	${INSTALL_DATA} ${WRKSRC}/amdgpu/*.bin \
	    ${PREFIX}/firmware/amdgpu/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.amdgpu \
	    ${PREFIX}/firmware/amdgpu/amdgpu-license

.include <bsd.port.mk>
