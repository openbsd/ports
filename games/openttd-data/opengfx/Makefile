COMMENT =		graphics data for OpenTTD

OPENTTD_PROJECT =	opengfx
V =			0.6.1

post-extract:
	cd ${WRKDIR} && ${TAR} xf opengfx-$V.tar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKSRC}/*.{grf,obg} ${PREFIX}/share/openttd/data/

.include <bsd.port.mk>
