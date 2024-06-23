COMMENT =	Reference Standard M, implementation of M/MUMPS

V =		1.81.1
HASH =		e869606095aa517508e0ef6ef1fb5256996540a4
PKGNAME =	rsm-${V}
DIST_TUPLE +=	gitlab Reference-Standard-M rsm v${V} .

CATEGORIES =	lang
HOMEPAGE =	https://gitlab.com/${GL_ACCOUNT}/${GL_TAGNAME}
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

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
