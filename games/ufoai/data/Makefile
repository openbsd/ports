# $OpenBSD: Makefile,v 1.3 2013/03/11 11:07:41 espie Exp $

# useless without ufoai, which can only be built on shared lib arches.
# saves a useless 530MB package on !shared arch.
SHARED_ONLY =	Yes

COMMENT =		UFO:AI data

V = 			2.3.1
DISTNAME =		ufoai-${V}-data
PKGNAME = 		ufoai-data-${V}

EXTRACT_SUFX =		.tar

PKG_ARCH = 		*

WRKDIST = 		${WRKDIR}/base

BUILD_DEPENDS = 	archivers/unzip

NO_BUILD =		Yes
NO_TEST =		Yes

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
