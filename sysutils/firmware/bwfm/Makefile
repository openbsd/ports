FW_DRIVER=	bwfm
LINUX_VER=	20200316
SUP_VER=	1.3
REVISION=	3
FW_VER=		${LINUX_VER}.${SUP_VER}
DISTNAME=	linux-firmware-${LINUX_VER}
EXTRACT_SUFX=	.tar.xz
DIST_TUPLE=	github bsdkurt brcm-supplemental brcm-supplemental-1.3 sup

# broad enough to reduce WRKSRC size but specific enough to match all DISTFILES
EXTRACT_FILES=	\*/{brcm\*,LICEN\*}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/brcm

do-install:
	${INSTALL_DATA} ${WRKSRC}/brcm/*bin ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKSRC}/brcm/*txt ${PREFIX}/firmware/

	${INSTALL_DATA} ${WRKSRC}/sup/*bin ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKSRC}/sup/*txt ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKSRC}/sup/*clm_blob ${PREFIX}/firmware/
	cd ${PREFIX}/firmware && ln brcmfmac4356-sdio.vamrs,rock960.txt \
		brcmfmac4356-sdio.friendlyarm,nanopc-t4.txt && \
		ln brcmfmac43456-sdio.pine64,pinebook-pro.bin \
		brcmfmac43456-sdio.pine64,rockpro64-v2.1.bin && \
		ln brcmfmac43456-sdio.pine64,pinebook-pro.txt \
		brcmfmac43456-sdio.pine64,rockpro64-v2.1.txt

	${INSTALL_DATA} ${WRKSRC}/LICENCE.broadcom_bcm43xx \
	    ${PREFIX}/firmware/bwfm-license

.include <bsd.port.mk>
