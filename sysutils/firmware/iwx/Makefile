# $OpenBSD: Makefile,v 1.7 2021/05/19 11:52:01 stsp Exp $

FW_DRIVER=	iwx
FW_VER=		20210512
DISTNAME=	linux-firmware-iwlwifi-fw-2021-05-12
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,iwlwifi-\*-\*.ucode}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi

# MASTER_SITES was https://cdn.kernel.org/pub/linux/kernel/firmware/
# but the latest available release (20210511) contains outdated images
# which probably don't contain fixes for fragattacks
MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware.git/snapshot/


FW=	cc-a0		48 \
	cc-a0		63 \
	Qu-c0-hr-b0	48 \
	Qu-c0-hr-b0	63 \
	QuZ-a0-hr-b0	48 \
	QuZ-a0-hr-b0	63

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.iwlwifi_firmware \
	    ${PREFIX}/firmware/iwx-license
.for device api in ${FW}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwx-${device}-${api}
.endfor

.include <bsd.port.mk>
