# $OpenBSD: Makefile,v 1.1.1.1 2017/10/12 09:50:15 patrick Exp $

FW_DRIVER=	bwfm
FW_VER=		20170307
DISTNAME=	brcm-${FW_VER}

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/brcm
MASTER_SITES=	http://firmware.openbsd.org/firmware-dist/

FIRMWARE=	brcmfmac43143-sdio.bin \
		brcmfmac43143.bin \
		brcmfmac43236b.bin \
		brcmfmac43241b0-sdio.bin \
		brcmfmac43241b4-sdio.bin \
		brcmfmac43241b5-sdio.bin \
		brcmfmac43242a.bin \
		brcmfmac4329-sdio.bin \
		brcmfmac4330-sdio.bin \
		brcmfmac4334-sdio.bin \
		brcmfmac43340-sdio.bin \
		brcmfmac4335-sdio.bin \
		brcmfmac43362-sdio.bin \
		brcmfmac4339-sdio.bin \
		brcmfmac43430-sdio.bin \
		brcmfmac43455-sdio.bin \
		brcmfmac4350-pcie.bin \
		brcmfmac4350c2-pcie.bin \
		brcmfmac4354-sdio.bin \
		brcmfmac4356-pcie.bin \
		brcmfmac4356-sdio.bin \
		brcmfmac43569.bin \
		brcmfmac43570-pcie.bin \
		brcmfmac4358-pcie.bin \
		brcmfmac43602-pcie.ap.bin \
		brcmfmac43602-pcie.bin \
		brcmfmac4366b-pcie.bin \
		brcmfmac4371-pcie.bin

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/firmware/
.endfor
	${INSTALL_DATA} ${WRKSRC}/LICENCE.broadcom_bcm43xx \
	    ${PREFIX}/firmware/bwfm-license

.include <bsd.port.mk>
