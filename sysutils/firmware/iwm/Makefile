# $OpenBSD: Makefile,v 1.9 2019/10/16 09:47:52 sthen Exp $

FW_DRIVER=	iwm
FW_VER=		20190923
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi
MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

V22=		22.361476.0
DISTFILES=	linux-firmware-${FW_VER}${EXTRACT_SUFX} \
		iwlwifi-3168-ucode-${V22}.tgz \
		iwlwifi-8265-ucode-${V22}.tgz

# use "V16" firmwares from linux-firmware
#	ic	api
FW+=	3160	16 \
	7260	16 \
	7265	16 \
	7265D	16 \
	8000C	16

# don't use newer versions of "V22" firmwares from linux-firmware,
# stick to the old separate files for now, newer ones require DQA
#FW+=	3168	22 \
#	8265	22 \

# add in new API versions to ease future development and testing,
# not used in the kernel yet
FW+=	3160	17 \
	7260	17 \
	7265	17 \
	7265D	29 \
	3168	29 \
	8265	36 \
	8000C	36

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.iwlwifi_firmware \
	    ${PREFIX}/firmware/iwm-license
.for device api in ${FW}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwm-${device}-${api}
.endfor

.for i in 3168 8265
	${INSTALL_DATA} ${WRKDIR}/iwlwifi-$i-ucode-${V22}/iwlwifi-$i-22.ucode ${PREFIX}/firmware/iwm-$i-22
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
