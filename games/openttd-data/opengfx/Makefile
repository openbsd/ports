# $OpenBSD: Makefile,v 1.2 2019/04/20 00:34:04 bentley Exp $

COMMENT =		graphics data for OpenTTD

OPENTTD_PROJECT =	opengfx
V =			0.5.5

post-extract:
	cd ${WRKDIR} && ${TAR} xf opengfx-$V.tar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKSRC}/*.{grf,obg} ${PREFIX}/share/openttd/data/

.include <bsd.port.mk>
