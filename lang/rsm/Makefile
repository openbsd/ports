COMMENT =	Reference Standard M, implementation of M/MUMPS

DISTNAME =	${GL_PROJECT}-${GL_TAGNAME}
PKGNAME =	${GL_PROJECT}-${GL_TAGNAME:S/v//}
GL_ACCOUNT =	Reference-Standard-M
GL_PROJECT =	rsm
GL_TAGNAME =	v1.76.2
CATEGORIES =	lang
HOMEPAGE =	https://gitlab.com/${GL_ACCOUNT}/${GL_TAGNAME}
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# AGPL-3.0+
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MASTER_SITES =	https://gitlab.com/${GL_ACCOUNT}/${GL_PROJECT}/-/archive/${GL_TAGNAME}/

NO_TEST =	Yes
MAKE_FILE =	BSDmakefile

post-install:
	${INSTALL_DATA_DIR}	${PREFIX}/share/rsm
	${INSTALL_DATA}		${WRKBUILD}/utils.rsm	${PREFIX}/share/rsm/
	${INSTALL_DATA}		${WRKBUILD}/COPYING	${PREFIX}/share/rsm/
	${INSTALL_DATA}		${WRKBUILD}/README.adoc	${PREFIX}/share/rsm/

.include <bsd.port.mk>
