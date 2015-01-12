# $OpenBSD: Makefile,v 1.1 2015/01/12 21:48:20 sthen Exp $

FW_DRIVER=	iwm
FW_VER=		0.20141130

DISTFILES=	iwlwifi-7260-ucode-25.228.9.0.tgz

WRKDIST=	${WRKDIR}

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	"http://wireless.kernel.org/en/users/Drivers/iwlwifi?action=AttachFile&do=get&target=" \
		http://firmware.openbsd.org/firmware-dist/

FW_FILES=	iwn-7260

do-install:
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-7260-ucode-25.228.9.0/LICENSE.iwlwifi-7260-ucode ${PREFIX}/firmware/iwm-license
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-7260-ucode-25.228.9.0/iwlwifi-7260-9.ucode ${PREFIX}/firmware/iwm-7260-9

.include <bsd.port.mk>
