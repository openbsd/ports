FW_DRIVER=	amdgpu
FW_VER=		20230625
DISTNAME=	linux-firmware-045b2136a61968e7984caeae857a326150bfe851
#DISTNAME=	linux-firmware-${FW_VER}
#EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,\*.bin}
REVISION=	0

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/amdgpu
#MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/
MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/amdgpu
	${INSTALL_DATA} ${WRKSRC}/amdgpu/*.bin \
	    ${PREFIX}/firmware/amdgpu/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.amdgpu \
	    ${PREFIX}/firmware/amdgpu/amdgpu-license

.include <bsd.port.mk>
