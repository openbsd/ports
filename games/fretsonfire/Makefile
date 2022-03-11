# This port is known to generate errors on (some) radeon cards.
# Intel cards appear to work fine.

V =			1.3.110
COMMENT =		guitar hero clone
DISTNAME =		FretsOnFire-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		14

CATEGORIES =		games x11

HOMEPAGE =		http://fretsonfire.sourceforge.net

# GPLv2 or later
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fretsonfire/}
USE_GMAKE =		Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/pygame${MODPY_FLAVOR} \
			graphics/py2-Pillow \
			graphics/py-opengl${MODPY_FLAVOR} \
			math/py2-numpy

WRKDIST =		"${WRKDIR}/Frets on Fire-${V}"
NO_TEST =		Yes

FFDIR =			${PREFIX}/share/fretsonfire

pre-configure:
			cp ${FILESDIR}/fretsonfire.sh ${WRKDIST}/
			${SUBST_CMD} ${WRKDIST}/fretsonfire.sh

do-install:
			${INSTALL_DATA_DIR} ${FFDIR}/data
			@cd ${WRKDIST}/data && pax -rw . ${FFDIR}/data
			${INSTALL_DATA_DIR} ${FFDIR}/src
			@cd ${WRKDIST}/src && pax -rw . ${FFDIR}/src
			${INSTALL_DATA_DIR} ${FFDIR}/doc
			@cd ${WRKDIST}/doc && pax -rw . ${FFDIR}/doc
			${INSTALL_DATA} ${WRKDIST}/copying.txt ${FFDIR}
			${INSTALL_SCRIPT} ${WRKDIST}/fretsonfire.sh \
			    ${PREFIX}/bin/fretsonfire
			chmod 644 ${PREFIX}/share/fretsonfire/data/translations/fretsonfire_hu.po

.include <bsd.port.mk>
