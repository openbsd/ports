FW_VER=		20240410
FW_DRIVER=	iwm
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi

SITES=		https://cdn.kernel.org/pub/linux/kernel/firmware/
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,iwlwifi-\*-\*.ucode}

FW+=	3160	17 \
	7260	17 \
	7265	17 \
	7265D	29 \
	3168	29 \
	8265	36 \
	8000C	36 \
	9000-pu-b0-jf-b0	46 \
	9260-th-b0-jf-b0	46

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.iwlwifi_firmware \
	    ${PREFIX}/firmware/iwm-license
.for device api in ${FW}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwm-${device:C/-.*//}-${api}
.endfor

.include <bsd.port.mk>
