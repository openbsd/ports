# $OpenBSD: Makefile,v 1.1.1.1 2011/05/27 07:20:11 ajacoutot Exp $

COMMENT =		UFO:AI data

V = 			2.3.1
DISTNAME =		ufoai-${V}-data
PKGNAME = 		ufoai-data-${V}

EXTRACT_SUFX =		.tar

PKG_ARCH = 		*

WRKDIST = 		${WRKDIR}/base

BUILD_DEPENDS = 	archivers/unzip

NO_BUILD =		Yes
NO_REGRESS =		Yes

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
