# $OpenBSD: Makefile,v 1.3 2014/01/09 22:56:18 sthen Exp $

FW_DRIVER =	ulpt
FW_VER =	1.0
REVISION=	0

# "You may not copy the Software onto any public network."
PERMIT_PACKAGE_CDROM ?=	  stupid license
PERMIT_PACKAGE_FTP ?=	  stupid license
PERMIT_DISTFILES_FTP ?=	  stupid license

MASTER_SITES =	http://www.openprinting.org/download/printdriver/auxfiles/HP/plugins/

DISTFILES =	hplip-3.12.11-plugin.run
WRKDIST =	${WRKDIR}

EXTRACT_SUFX =	.run
EXTRACT_CASES = *.run) \
	tail -c +9524 ${FULLDISTDIR}/$$archive | ${GZIP_CMD} -dc | ${TAR} -xf - ;;

post-extract:
	${GZIP_CMD} -d ${WRKSRC}/hp_laserjet_1000.fw.gz
	${GZIP_CMD} -d ${WRKSRC}/hp_laserjet_1005_series.fw.gz
	${GZIP_CMD} -d ${WRKSRC}/hp_laserjet_1018.fw.gz
	${GZIP_CMD} -d ${WRKSRC}/hp_laserjet_1020.fw.gz
	fmt -w 72 ${WRKSRC}/license.txt > ${WRKSRC}/license-w72.txt
	echo "\nThe following files are under this license:\n${FW_DRIVER}-hp1000 ${FW_DRIVER}-hp1005 ${FW_DRIVER}-hp1018 ${FW_DRIVER}-hp1020\n\nThese files are needed by various models of ${FW_DRIVER}(4) devices." >> ${WRKSRC}/license-w72.txt

do-install:
	${INSTALL_DATA} ${WRKSRC}/license-w72.txt ${PREFIX}/firmware/${FW_DRIVER}-license-hp
	${INSTALL_DATA} ${WRKSRC}/hp_laserjet_1000.fw ${PREFIX}/firmware/${FW_DRIVER}-hp1000
	${INSTALL_DATA} ${WRKSRC}/hp_laserjet_1005_series.fw ${PREFIX}/firmware/${FW_DRIVER}-hp1005
	${INSTALL_DATA} ${WRKSRC}/hp_laserjet_1018.fw ${PREFIX}/firmware/${FW_DRIVER}-hp1018
	${INSTALL_DATA} ${WRKSRC}/hp_laserjet_1020.fw ${PREFIX}/firmware/${FW_DRIVER}-hp1020

.include <bsd.port.mk>
