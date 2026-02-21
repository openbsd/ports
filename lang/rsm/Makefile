COMMENT =	Reference Standard M, implementation of M/MUMPS

V =		1.82.4
HASH =		92e8f0f87dec9e5185594cffe5ac996dfba4289e
PKGNAME =	rsm-${V}
DIST_TUPLE +=	gitlab Reference-Standard-M rsm v${V} .

CATEGORIES =	lang

# AGPL-3.0+
PERMIT_PACKAGE =	Yes

WANTLIB += c m

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/rsm-v${V}-${HASH}

post-install:
	${INSTALL_DATA_DIR}	${PREFIX}/share/rsm
	${INSTALL_DATA}		${WRKBUILD}/utils.rsm	${PREFIX}/share/rsm/
	${INSTALL_DATA}		${WRKBUILD}/COPYING	${PREFIX}/share/rsm/
	${INSTALL_DATA}		${WRKBUILD}/README.adoc	${PREFIX}/share/rsm/

.include <bsd.port.mk>
