FW_DRIVER=	radeondrm
FW_VER=		20201218
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENSE.\*,radeon/\*.bin}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/radeon
MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/firmware/radeon
	${INSTALL_DATA} ${WRKSRC}/radeon/*.bin \
	    ${PREFIX}/firmware/radeon/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.radeon \
	    ${PREFIX}/firmware/radeon/radeon-license

.include <bsd.port.mk>
