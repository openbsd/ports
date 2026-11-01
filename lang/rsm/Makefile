COMMENT =	Reference Standard M, implementation of M/MUMPS

DIST_TUPLE +=	gitlab Reference-Standard-M rsm v1.82.4 .
REVISION =	0

CATEGORIES =	lang

# AGPL-3.0+
PERMIT_PACKAGE =	Yes

WANTLIB += c m

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR}	${PREFIX}/share/rsm
	${INSTALL_DATA}		${WRKBUILD}/utils.rsm	${PREFIX}/share/rsm/
	${INSTALL_DATA}		${WRKBUILD}/COPYING	${PREFIX}/share/rsm/
	${INSTALL_DATA}		${WRKBUILD}/README.adoc	${PREFIX}/share/rsm/

.include <bsd.port.mk>
