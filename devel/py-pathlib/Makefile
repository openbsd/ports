# $OpenBSD: Makefile,v 1.15 2021/07/06 16:55:32 daniel Exp $

COMMENT =		object-oriented filesystem paths

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		pathlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		10

CATEGORIES =		devel

HOMEPAGE =		https://pathlib.readthedocs.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx,python3>=4.0.2
TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

FLAVORS =		python3
FLAVOR ?=

DOCDIR = ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pathlib

MAKE_ENV +=	PYTHONPATH=${WRKSRC}

post-build:
	cd ${WRKBUILD}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cp -r ${WRKBUILD}/docs/_build/html/* ${DOCDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCDIR}

do-test:
	${MODPY_BIN} ${WRKBUILD}/test_pathlib.py

.include <bsd.port.mk>
