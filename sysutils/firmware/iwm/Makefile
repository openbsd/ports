# $OpenBSD: Makefile,v 1.17 2021/12/03 12:50:50 stsp Exp $

FW_DRIVER=	iwm
FW_VER=		20211101
DISTNAME=	linux-firmware-iwlwifi-fw-2021-11-01
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,iwlwifi-\*-\*.ucode}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi

# MASTER_SITES was https://cdn.kernel.org/pub/linux/kernel/firmware/
# but the latest available release (20210511) contains outdated images
# which probably don't contain fixes for fragattacks
MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware.git/snapshot/

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
