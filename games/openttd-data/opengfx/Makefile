# $OpenBSD: Makefile,v 1.1.1.1 2017/04/13 07:30:15 bentley Exp $

COMMENT =		graphics data for OpenTTD

OPENTTD_PROJECT =	opengfx
V =			0.5.4

post-extract:
	cd ${WRKDIR} && ${TAR} xf opengfx-$V.tar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKSRC}/*.{grf,obg} ${PREFIX}/share/openttd/data/

.include <bsd.port.mk>
