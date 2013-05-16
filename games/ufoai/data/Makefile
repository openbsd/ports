# $OpenBSD: Makefile,v 1.4 2013/05/16 10:10:35 kirby Exp $

COMMENT =		UFO:AI data

DISTNAME =		ufoai-${V}-data
PKGNAME = 		ufoai-data-${V}

EXTRACT_SUFX =		.tar

PKG_ARCH = 		*

WRKDIST = 		${WRKDIR}/base

BUILD_DEPENDS = 	archivers/unzip

NO_BUILD =		Yes

post-extract:
	cd ${WRKSRC} && ${LOCALBASE}/bin/unzip \*.pk3 -d ${WRKSRC}
	rm ${WRKSRC}/*.pk3

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ufoai/base/
	cd ${WRKSRC} && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/ufoai/base/{}" \;
	cd ${WRKSRC} && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/ufoai/base/{}" \;
	
.include <bsd.port.mk>
