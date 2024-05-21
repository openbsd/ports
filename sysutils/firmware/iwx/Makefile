FW_VER=		20240513
FW_DRIVER=	iwx
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
# broad enough to reduce WRKSRC size but specific enough to match all DISTFILES
EXTRACT_FILES=	\*/{iwlwifi-\*,LICEN\*,WHENCE}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi

SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/

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
