# $OpenBSD: Makefile,v 1.12 2014/04/06 21:10:25 sthen Exp $

BROKEN = fails at runtime "python2.7 in free(): error: modified chunk-pointer 0x..."

V =			1.3.110
COMMENT =		guitar hero clone
DISTNAME =		FretsOnFire-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		8

CATEGORIES =		games x11

HOMEPAGE =		http://fretsonfire.sourceforge.net

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fretsonfire/}
USE_GMAKE =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/pygame			\
			graphics/py-Pillow		\
			graphics/py-opengl		\
			math/py-numpy

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
