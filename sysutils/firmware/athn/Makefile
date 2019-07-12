# $OpenBSD: Makefile,v 1.11 2019/07/12 21:34:51 sthen Exp $

FW_DRIVER=	athn
FW_VER=		1.1
REVISION=	4

EXTRACT_SUFX=	.tgz
WRKDIST=	${WRKDIR}

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

BUILD_DEPENDS=		devel/open-ath9k-htc-firmware/k2>=1.4.0pl20171105p0 \
			devel/open-ath9k-htc-firmware/magpie

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.atheros_firmware ${PREFIX}/firmware/athn-license
	echo "\nThe following files are under this license:\n\nathn-7010 athn-7010-11 athn-9271\n\nThese files are needed by various models of athn(4) devices." >> ${PREFIX}/firmware/athn-license
	${INSTALL_DATA} ${WRKSRC}/ar7010.fw ${PREFIX}/firmware/athn-ar7010
	${INSTALL_DATA} ${WRKSRC}/ar7010_1_1.fw ${PREFIX}/firmware/athn-ar7010-11
	${INSTALL_DATA} ${WRKSRC}/ar9271.fw ${PREFIX}/firmware/athn-ar9271
	${INSTALL_DATA} ${LOCALBASE}/share/open-ath9k-htc-firmware/htc_7010.fw ${PREFIX}/firmware/athn-open-ar7010
	${INSTALL_DATA} ${LOCALBASE}/share/open-ath9k-htc-firmware/htc_9271.fw ${PREFIX}/firmware/athn-open-ar9271
	${INSTALL_DATA} ${LOCALBASE}/share/open-ath9k-htc-firmware/license ${PREFIX}/firmware/athn-open-license

.include <bsd.port.mk>
