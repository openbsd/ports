V=		2022-01-11
FW_DRIVER=	iwm
FW_VER=		${V:S/-//g}
DISTNAME=	linux-firmware-iwlwifi-fw-$V

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi

MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware.git/snapshot/
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,iwlwifi-\*-\*.ucode}

FW+=	3160	17 \
	7260	17 \
	7265	17 \
	7265D	29 \
	3168	29 \
	8265	34 \
	8265	36 \
	8000C	34 \
	8000C	36 \
	9000-pu-b0-jf-b0	34 \
	9000-pu-b0-jf-b0	46 \
	9260-th-b0-jf-b0	34 \
	9260-th-b0-jf-b0	46

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.iwlwifi_firmware \
	    ${PREFIX}/firmware/iwm-license
.for device api in ${FW}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwm-${device:C/-.*//}-${api}
.endfor

.include <bsd.port.mk>
