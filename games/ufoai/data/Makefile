COMMENT =		UFO:AI data

DISTNAME =		ufoai-${V}-data
PKGNAME = 		ufoai-data-${V}
REVISION = 		1

EXTRACT_SUFX =		.tar

PKG_ARCH = 		*

WRKDIST = 		${WRKDIR}/base

BUILD_DEPENDS = 	archivers/unzip

NO_BUILD =		Yes

DATADIR =		${PREFIX}/share/ufoai/base

do-install:
	${INSTALL_DATA_DIR} ${DATADIR}
	cd ${DATADIR} && unzip ${WRKDIST}/\*.pk3 || exit 0
	chown -R ${SHAREOWN}:${SHAREGRP} ${DATADIR}
	find ${DATADIR} \
	    -type f -exec chmod ${SHAREMODE} {} + -o \
	    -type d -exec chmod ${DIRMODE} {} +

.include <bsd.port.mk>
