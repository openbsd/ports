# $OpenBSD: Makefile,v 1.18 2021/11/02 00:00:59 sthen Exp $

COMMENT =		object-oriented filesystem paths

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		pathlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		13

CATEGORIES =		devel

HOMEPAGE =		https://pathlib.readthedocs.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

# this is not really needed for python3, pathlib is in the standard library
FLAVORS =		python3
FLAVOR =	python3

MAKE_ENV +=	PYTHONPATH=${WRKSRC}

do-test:
	${MODPY_BIN} ${WRKBUILD}/test_pathlib.py

.include <bsd.port.mk>
