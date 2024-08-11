COMMENT=	microcode update binaries for AMD CPUs
FW_DRIVER=	amd
FW_VER=		20240811
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,amd-ucode}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/amd-ucode
#SITES=		https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/
SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/amd
	${INSTALL_DATA} ${WRKSRC}/amd-ucode/microcode_amd*.bin ${PREFIX}/firmware/amd/
	${INSTALL_DATA} ${WRKSRC}/amd-ucode/README ${PREFIX}/firmware/amd/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.amd-ucode ${PREFIX}/firmware/amd-ucode-license

.include <bsd.port.mk>
