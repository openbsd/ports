COMMENT =		music data for OpenTTD

OPENTTD_PROJECT =	openmsx
V =			0.4.2

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/gm
	${INSTALL_DATA} ${WRKSRC}/*.{mid,obm} ${PREFIX}/share/openttd/gm/

.include <bsd.port.mk>
