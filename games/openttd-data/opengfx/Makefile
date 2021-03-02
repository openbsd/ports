# $OpenBSD: Makefile,v 1.3 2021/03/02 04:22:21 bentley Exp $

COMMENT =		graphics data for OpenTTD

OPENTTD_PROJECT =	opengfx
V =			0.6.0

post-extract:
	cd ${WRKDIR} && ${TAR} xf opengfx-$V.tar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKSRC}/*.{grf,obg} ${PREFIX}/share/openttd/data/

.include <bsd.port.mk>
