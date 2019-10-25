# $OpenBSD: Makefile,v 1.11 2019/10/25 16:38:14 sthen Exp $

FW_DRIVER=	iwm
FW_VER=		20190923
DISTNAME=	linux-firmware-${FW_VER}
REVISION=	1
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi
MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

# use "V16" firmwares from linux-firmware
#	ic	api
FW+=	3160	16 \
	7260	16 \
	7265	16 \
	7265D	16 \
	8000C	16 \
	3168	22 \
	8265	22

# add in new API versions to ease future development and testing,
# not used in the kernel yet
FW+=	3160	17 \
	7260	17 \
	7265	17 \
	7265D	29 \
	3168	29 \
	8265	34 \
	8000C	34

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.iwlwifi_firmware \
	    ${PREFIX}/firmware/iwm-license
.for device api in ${FW}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwm-${device}-${api}
.endfor

# also supported by iwlmvm (equivalent to our iwm) on linux:
# Wireless-AC 9560, 9461, 9462:		iwlwifi-9000-pu-b0-jf-b0-${api}.ucode
# Wireless-AC 9260:			iwlwifi-9260-th-b0-jf-b0-${api}.ucode
# Wi-Fi 6 AX200 160MHz:			iwlwifi-cc-a0-${api}.ucode

# "these devices have the same PCI device and subsystem IDs"
# https://www.spinics.net/lists/linux-wireless/msg184271.html
# https://bugs.launchpad.net/hwe-next/+bug/1833065
# Wi-Fi 6 AX201 160MHz:			iwlwifi-Qu-??-??-b0-${api}.ucode
# integrated 22000 series ???		iwlwifi-Quz-a0-??-b0-${api}.ucode

.include <bsd.port.mk>
