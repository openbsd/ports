COMMENT =		music data for OpenTTD

OPENTTD_PROJECT =	openmsx
V =			0.3.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/gm
	${INSTALL_DATA} ${WRKSRC}/*.{mid,obm} ${PREFIX}/share/openttd/gm/

.include <bsd.port.mk>
