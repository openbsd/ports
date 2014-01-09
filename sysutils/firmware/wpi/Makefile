# $OpenBSD: Makefile,v 1.4 2014/01/09 22:48:25 sthen Exp $

FW_DRIVER=	wpi
FW_VER=		3.2
DISTNAME=	iwlwifi-3945-ucode-15.32.2.9
REVISION=	1

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	${HOMEPAGE}iwlwifi/downloads/ \
		http://firmware.openbsd.org/firmware-dist/

do-install:
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-3945-ucode-15.32.2.9/LICENSE.iwlwifi-3945-ucode ${PREFIX}/firmware/wpi-license
	echo "\nThe following file is under this license:\n\nwpi-3945abg\n\nThis file is needed by wpi(4) devices." >> ${PREFIX}/firmware/wpi-license
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-3945-ucode-15.32.2.9/iwlwifi-3945-2.ucode ${PREFIX}/firmware/wpi-3945abg

.include <bsd.port.mk>
