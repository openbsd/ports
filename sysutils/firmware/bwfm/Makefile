# $OpenBSD: Makefile,v 1.10 2021/04/23 21:15:00 sthen Exp $

FW_DRIVER=	bwfm
LINUX_VER=	20200316
SUP_VER=	1.2
REVISION=	1
FW_VER=		${LINUX_VER}.${SUP_VER}
DISTNAME=	linux-firmware-${LINUX_VER}
EXTRACT_SUFX=	.tar.xz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		{bsdkurt/brcm-supplemental/archive/}brcm-supplemental-${SUP_VER}.tar.gz:0 \
		rpi-firmware-nonfree-{RPi-Distro/firmware-nonfree/archive/}83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5.tar.gz:0
# broad enough to reduce WRKSRC size but specific enough to match all DISTFILES
EXTRACT_FILES=	\*/{brcm\*,LICEN\*}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/
MASTER_SITES0=	https://github.com/

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/brcm

SUP_DIR=	${WRKDIR}/brcm-supplemental-brcm-supplemental-${SUP_VER}
RPI_DIR=	${WRKDIR}/firmware-nonfree-*/brcm

do-install:
	${INSTALL_DATA} ${WRKSRC}/brcm/*bin ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKSRC}/brcm/*txt ${PREFIX}/firmware/

	${INSTALL_DATA} ${SUP_DIR}/*bin ${PREFIX}/firmware/
	${INSTALL_DATA} ${SUP_DIR}/*txt ${PREFIX}/firmware/
	${INSTALL_DATA} ${SUP_DIR}/brcmfmac4356-sdio.vamrs,rock960.txt \
		${PREFIX}/firmware/brcmfmac4356-sdio.friendlyarm,nanopc-t4.txt

.for i in bin txt clm_blob
	${INSTALL_DATA} ${RPI_DIR}/brcmfmac43456-sdio.$i \
	    ${PREFIX}/firmware/brcmfmac43456-sdio.raspberrypi,400.$i
.endfor

	${INSTALL_DATA} ${WRKSRC}/LICENCE.broadcom_bcm43xx \
	    ${PREFIX}/firmware/bwfm-license

.include <bsd.port.mk>
