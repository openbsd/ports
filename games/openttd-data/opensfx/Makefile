COMMENT =		sound effects data for OpenTTD

OPENTTD_PROJECT =	opensfx
V =			1.0.3

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/data
	${INSTALL_DATA} ${WRKSRC}/opensfx.* ${PREFIX}/share/openttd/data/

.include <bsd.port.mk>
