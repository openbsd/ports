# $OpenBSD: Makefile,v 1.4 2016/04/15 08:53:49 shadchin Exp $

COMMENT =		object-oriented filesystem paths

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		pathlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://pathlib.readthedocs.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinx
TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

FLAVORS =		python3
FLAVOR ?=

DOCDIR = ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pathlib

post-build:
	cd ${WRKBUILD}/docs && ${MAKE} html

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cp -r ${WRKBUILD}/docs/_build/html/* ${DOCDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCDIR}

do-test:
	${MODPY_BIN} ${WRKBUILD}/test_pathlib.py

.include <bsd.port.mk>
