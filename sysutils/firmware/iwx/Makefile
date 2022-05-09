FW_DRIVER=	iwx
FW_VER=		20220110
DISTNAME=	linux-firmware-iwlwifi-fw-2022-01-10
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,iwlwifi-\*-\*.ucode,iwlwifi-*.pnvm}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi

# MASTER_SITES was https://cdn.kernel.org/pub/linux/kernel/firmware/
# but the latest available release (20210511) contains outdated images
# which probably don't contain fixes for fragattacks
MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware.git/snapshot/


FW=	cc-a0		63 \
	cc-a0		67 \
	so-a0-gf-a0	67 \
	so-a0-gf4-a0	67 \
	so-a0-jf-b0	64 \
	ty-a0-gf-a0	67 \
	Qu-b0-hr-b0	63 \
	Qu-b0-jf-b0	63 \
	Qu-c0-hr-b0	63 \
	Qu-c0-jf-b0	63 \
	QuZ-a0-hr-b0	63 \
	QuZ-a0-hr-b0	67 \
	QuZ-a0-jf-b0	63

PNVM=	so-a0-gf-a0 \
	so-a0-gf4-a0 \
	ty-a0-gf-a0

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.iwlwifi_firmware \
	    ${PREFIX}/firmware/iwx-license
.for device api in ${FW}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwx-${device}-${api}
.endfor
.for device in ${PNVM}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}.pnvm \
	    ${PREFIX}/firmware/iwx-${device}.pnvm
.endfor

.include <bsd.port.mk>
