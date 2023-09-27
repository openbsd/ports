V=		2023-06-29
V_OLD=		2022-11-08
FW_DRIVER=	iwx
FW_VER=		${V:S/-//g}
DISTNAME=	linux-firmware-iwlwifi-fw-$V
DISTNAME_OLD=	linux-firmware-iwlwifi-fw-${V_OLD}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME_OLD}${EXTRACT_SUFX}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi

# SITES was https://cdn.kernel.org/pub/linux/kernel/firmware/
# but the latest releases tagged in the Git repository are not always present
SITES=		https://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware.git/snapshot/
EXTRACT_FILES=	linux-firmware-iwlwifi-fw-*/{LICENCE.\*,iwlwifi-\*-\*.*}

FW=	cc-a0		77 \
	so-a0-gf-a0	77 \
	so-a0-gf4-a0	77 \
	so-a0-hr-b0	77 \
	so-a0-jf-b0	77 \
	ty-a0-gf-a0	77 \
	Qu-b0-hr-b0	77 \
	Qu-b0-jf-b0	77 \
	Qu-c0-hr-b0	77 \
	Qu-c0-jf-b0	77 \
	QuZ-a0-hr-b0	77 \
	QuZ-a0-jf-b0	77

PNVM=	so-a0-gf-a0 \
	so-a0-gf4-a0 \
	ty-a0-gf-a0

# old images stay around for bisecting issues back into older kernels
FW_OLD=	cc-a0		67 \
	so-a0-gf-a0	67 \
	so-a0-gf4-a0	67 \
	so-a0-hr-b0	64 \
	so-a0-jf-b0	64 \
	ty-a0-gf-a0	67 \
	Qu-b0-hr-b0	63 \
	Qu-b0-jf-b0	63 \
	Qu-c0-hr-b0	63 \
	Qu-c0-jf-b0	63 \
	QuZ-a0-hr-b0	67 \
	QuZ-a0-jf-b0	63 \


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
.for device api in ${FW_OLD}
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME_OLD}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwx-${device}-${api}
.endfor

.include <bsd.port.mk>
