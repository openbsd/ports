COMMENT=	microcode update binaries for AMD CPUs
FW_DRIVER=	amd
FW_VER=		20230719

#DISTNAME=	linux-firmware-${FW_VER}
#EXTRACT_SUFX=	.tar.xz
#EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,amd-ucode}
#MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

# newer microcode for 17h/19h not yet on linux-firmware cdn
DISTNAME=	amd-ucode-${FW_VER}
EXTRACT_SUFX=	.tgz
MASTER_SITES0=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		LICENSE.amd-ucode:0
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
post-extract:
	cp ${FULLDISTDIR}/LICENSE.amd-ucode ${WRKSRC}/

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/amd-ucode

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/amd
	${INSTALL_DATA} ${WRKSRC}/amd-ucode/microcode_amd*.bin ${PREFIX}/firmware/amd/
	${INSTALL_DATA} ${WRKSRC}/amd-ucode/README ${PREFIX}/firmware/amd/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.amd-ucode ${PREFIX}/firmware/amd-ucode-license

.include <bsd.port.mk>
