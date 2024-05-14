COMMENT =	Reference Standard M, implementation of M/MUMPS

V =		1.80.4
HASH =		0efe8a658f3e7d1dc04cb974b97b5402271fab66
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
