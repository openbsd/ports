COMMENT =		graphics data for OpenTTD

OPENTTD_PROJECT =	opengfx
V =			8.0

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKSRC}/*.{grf,obg} ${PREFIX}/share/openttd/data/

.include <bsd.port.mk>
