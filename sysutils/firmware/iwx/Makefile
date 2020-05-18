# $OpenBSD: Makefile,v 1.2 2020/05/18 19:30:56 kn Exp $

FW_DRIVER=	iwx
FW_VER=		20191022
REVISION=	0
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz
EXTRACT_FILES=	${DISTNAME}/{LICENCE.\*,\*.ucode}

HOMEPAGE=	https://wireless.wiki.kernel.org/en/users/Drivers/iwlwifi
MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/firmware/

FW=	cc-a0	46

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.iwlwifi_firmware \
	    ${PREFIX}/firmware/iwx-license
.for device api in ${FW}
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-${device}-${api}.ucode \
	    ${PREFIX}/firmware/iwx-${device}-${api}
.endfor

# "these devices have the same PCI device and subsystem IDs"
# https://www.spinics.net/lists/linux-wireless/msg184271.html
# https://bugs.launchpad.net/hwe-next/+bug/1833065
# Wi-Fi 6 AX201 160MHz:			iwlwifi-Qu-??-??-b0-${api}.ucode
# integrated 22000 series ???		iwlwifi-Quz-a0-??-b0-${api}.ucode

.include <bsd.port.mk>
