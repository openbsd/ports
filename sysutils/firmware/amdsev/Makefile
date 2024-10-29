COMMENT=	AMD SEV firmware binaries
FW_DRIVER=	amdsev
FW_VER=		20241017
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,amd}

MAINTAINER=	Hans-Joerg Hoexer <hshoexer@genua.de>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/amd
SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/amdsev
	${INSTALL_DATA} ${WRKSRC}/amd/amd_sev*.sbin ${PREFIX}/firmware/amdsev/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.amd-sev ${PREFIX}/firmware/amd-sev-license

.include <bsd.port.mk>
