# $OpenBSD: Makefile,v 1.5 2013/12/02 23:49:00 brad Exp $

FW_DRIVER=	iwn
FW_VER=		5.9
DISTFILES=	iwlwifi-4965-ucode-228.61.2.24.tgz \
		iwlwifi-5000-ucode-8.83.5.1-1.tgz \
		iwlwifi-5150-ucode-8.24.2.2.tgz \
		iwlwifi-1000-ucode-39.31.5.1.tgz \
		iwlwifi-6000-ucode-9.221.4.1.tgz \
		iwlwifi-6050-ucode-41.28.5.1.tgz \
		iwlwifi-6000g2a-ucode-18.168.6.1.tgz \
		iwlwifi-6000g2b-ucode-18.168.6.1.tgz

WRKDIST=	${WRKDIR}

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	"http://wireless.kernel.org/en/users/Drivers/iwlwifi?action=AttachFile&do=get&target=" \
		http://firmware.openbsd.org/firmware-dist/

do-install:
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2b-ucode-18.168.6.1/LICENSE.iwlwifi-6000g2b-ucode ${PREFIX}/firmware/iwn-license
	echo "\nThe following files are under this license:\n\niwn-4965 iwn-5000 iwn-5150 iwn-1000 iwn-6000 iwn-6050 iwn-6005 iwn-6030\n\nThese files are needed by various models of iwn(4) devices." >> ${PREFIX}/firmware/iwn-license
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-4965-ucode-228.61.2.24/iwlwifi-4965-2.ucode ${PREFIX}/firmware/iwn-4965
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-5000-ucode-8.83.5.1/iwlwifi-5000-5.ucode ${PREFIX}/firmware/iwn-5000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-5150-ucode-8.24.2.2/iwlwifi-5150-2.ucode ${PREFIX}/firmware/iwn-5150
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-1000-ucode-39.31.5.1/iwlwifi-1000-5.ucode ${PREFIX}/firmware/iwn-1000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000-ucode-9.221.4.1/iwlwifi-6000-4.ucode ${PREFIX}/firmware/iwn-6000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6050-ucode-41.28.5.1/iwlwifi-6050-5.ucode ${PREFIX}/firmware/iwn-6050
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2a-ucode-18.168.6.1/iwlwifi-6000g2a-6.ucode ${PREFIX}/firmware/iwn-6005
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2b-ucode-18.168.6.1/iwlwifi-6000g2b-6.ucode ${PREFIX}/firmware/iwn-6030

.include <bsd.port.mk>
