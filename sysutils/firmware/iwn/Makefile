# $OpenBSD: Makefile,v 1.8 2014/07/02 22:33:33 brad Exp $

FW_DRIVER=	iwn
FW_VER=		5.10
REVISION=	1

DISTFILES=	iwlwifi-4965-ucode-228.61.2.24.tgz \
		iwlwifi-5000-ucode-8.83.5.1-1.tgz \
		iwlwifi-5150-ucode-8.24.2.2.tgz \
		iwlwifi-1000-ucode-39.31.5.1.tgz \
		iwlwifi-100-ucode-39.31.5.1.tgz \
		iwlwifi-2030-ucode-18.168.6.1.tgz \
		iwlwifi-2000-ucode-18.168.6.1.tgz \
		iwlwifi-105-ucode-18.168.6.1.tgz \
		iwlwifi-135-ucode-18.168.6.1.tgz \
		iwlwifi-6000-ucode-9.221.4.1.tgz \
		iwlwifi-6050-ucode-41.28.5.1.tgz \
		iwlwifi-6000g2a-ucode-18.168.6.1.tgz \
		iwlwifi-6000g2b-ucode-18.168.6.1.tgz \
		iwlwifi-7260-ucode-22.0.7.0.tgz \
		iwlwifi-3160-ucode-22.0.7.0.tgz

WRKDIST=	${WRKDIR}

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	"http://wireless.kernel.org/en/users/Drivers/iwlwifi?action=AttachFile&do=get&target=" \
		http://firmware.openbsd.org/firmware-dist/

FW_FILES=	iwn-4965 iwn-5000 iwn-5150 iwn-1000 iwn-100 iwn-2030 iwn-2030\
		iwn-2000 iwn-105 iwn-135 iwn-6000 iwn-6050 iwn-6005 iwn-6030\
		iwn-7260 iwn-3160

do-install:
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2b-ucode-18.168.6.1/LICENSE.iwlwifi-6000g2b-ucode ${PREFIX}/firmware/iwn-license
	echo "\nThe following files are under this license:\n\n${FW_FILES}\n\nThese files are needed by various models of iwn(4) devices." >> ${PREFIX}/firmware/iwn-license
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-4965-ucode-228.61.2.24/iwlwifi-4965-2.ucode ${PREFIX}/firmware/iwn-4965
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-5000-ucode-8.83.5.1/iwlwifi-5000-5.ucode ${PREFIX}/firmware/iwn-5000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-5150-ucode-8.24.2.2/iwlwifi-5150-2.ucode ${PREFIX}/firmware/iwn-5150
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-1000-ucode-39.31.5.1/iwlwifi-1000-5.ucode ${PREFIX}/firmware/iwn-1000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-100-ucode-39.31.5.1/iwlwifi-100-5.ucode ${PREFIX}/firmware/iwn-100
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-2030-ucode-18.168.6.1/iwlwifi-2030-6.ucode ${PREFIX}/firmware/iwn-2030
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-2000-ucode-18.168.6.1/iwlwifi-2000-6.ucode ${PREFIX}/firmware/iwn-2000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-105-ucode-18.168.6.1/iwlwifi-105-6.ucode ${PREFIX}/firmware/iwn-105
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-135-ucode-18.168.6.1/iwlwifi-135-6.ucode ${PREFIX}/firmware/iwn-135
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000-ucode-9.221.4.1/iwlwifi-6000-4.ucode ${PREFIX}/firmware/iwn-6000
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6050-ucode-41.28.5.1/iwlwifi-6050-5.ucode ${PREFIX}/firmware/iwn-6050
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2a-ucode-18.168.6.1/iwlwifi-6000g2a-6.ucode ${PREFIX}/firmware/iwn-6005
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-6000g2b-ucode-18.168.6.1/iwlwifi-6000g2b-6.ucode ${PREFIX}/firmware/iwn-6030
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-7260-ucode-22.0.7.0/iwlwifi-7260-7.ucode ${PREFIX}/firmware/iwn-7260
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-3160-ucode-22.0.7.0/iwlwifi-3160-7.ucode ${PREFIX}/firmware/iwn-3160

.include <bsd.port.mk>
