# $OpenBSD: Makefile,v 1.5 2013/12/18 18:35:55 naddy Exp $

COMMENT =		UFO:AI data

DISTNAME =		ufoai-${V}-data
PKGNAME = 		ufoai-data-${V}

EXTRACT_SUFX =		.tar

PKG_ARCH = 		*

WRKDIST = 		${WRKDIR}/base

BUILD_DEPENDS = 	archivers/unzip

NO_BUILD =		Yes

DATADIR =		${PREFIX}/share/ufoai/base

do-install:
	${INSTALL_DATA_DIR} ${DATADIR}
	cd ${DATADIR} && unzip ${WRKDIST}/\*.pk3
	chown -R ${SHAREOWN}:${SHAREGRP} ${DATADIR}
	find ${DATADIR} \
	    -type f -exec chmod ${SHAREMODE} {} + -o \
	    -type d -exec chmod ${DIRMODE} {} +

.include <bsd.port.mk>
