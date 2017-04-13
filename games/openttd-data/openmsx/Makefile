# $OpenBSD: Makefile,v 1.1.1.1 2017/04/13 07:30:15 bentley Exp $

COMMENT =		music data for OpenTTD

OPENTTD_PROJECT =	openmsx
V =			0.3.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openttd/gm
	${INSTALL_DATA} ${WRKSRC}/*.{mid,obm} ${PREFIX}/share/openttd/gm/

.include <bsd.port.mk>
