# $OpenBSD: Makefile,v 1.3 2011/06/12 00:20:51 sthen Exp $

FW_DRIVER=	iwn
FW_VER=		5.6
REVISION=	0
DISTFILES=	iwlwifi-4965-ucode-228.61.2.24.tgz \
		iwlwifi-5000-ucode-8.24.2.12.tgz \
		iwlwifi-5150-ucode-8.24.2.2.tgz \
		iwlwifi-1000-ucode-128.50.3.1.tgz \
		iwlwifi-6000-ucode-9.221.4.1.tgz \
		iwlwifi-6050-ucode-41.28.5.1.tgz \
		iwlwifi-6000g2a-ucode-17.168.5.1.tgz \
		iwlwifi-6000g2b-ucode-17.168.5.1.tgz

WRKDIST=	${WRKDIR}

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	${HOMEPAGE}iwlwifi/downloads/ \
		http://firmware.openbsd.org/firmware-dist/

do-install:
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6050-ucode-41.28.5.1/LICENSE.iwlwifi-6050-ucode ${PREFIX}/firmware/iwn-license
	echo "\nThe following files are under this license:\n\niwn-4965 iwn-5000 iwn-5150 iwn-1000 iwn-6000 iwn-6050 iwn-6005 iwn-6030\n\nThese files are needed by various models of iwn(4) devices." >> ${PREFIX}/firmware/iwn-license
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-4965-ucode-228.61.2.24/iwlwifi-4965-2.ucode ${PREFIX}/firmware/iwn-4965
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-5000-ucode-8.24.2.12/iwlwifi-5000-2.ucode ${PREFIX}/firmware/iwn-5000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-5150-ucode-8.24.2.2/iwlwifi-5150-2.ucode ${PREFIX}/firmware/iwn-5150
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-1000-ucode-128.50.3.1/iwlwifi-1000-3.ucode ${PREFIX}/firmware/iwn-1000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000-ucode-9.221.4.1/iwlwifi-6000-4.ucode ${PREFIX}/firmware/iwn-6000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6050-ucode-41.28.5.1/iwlwifi-6050-5.ucode ${PREFIX}/firmware/iwn-6050
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2a-ucode-17.168.5.1/iwlwifi-6000g2a-5.ucode ${PREFIX}/firmware/iwn-6005
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2b-ucode-17.168.5.1/iwlwifi-6000g2b-5.ucode ${PREFIX}/firmware/iwn-6030

.include <bsd.port.mk>
