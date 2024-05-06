COMMENT =	python package for parsing and building CSS

CATEGORIES =	textproc

MODPY_EGG_VERSION =	1.0.10
DISTNAME =	css-parser-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
MODPY_PI =	Yes
REVISION =	0

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	textproc/py-chardet${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

# pytest needs jaraco.test
do-test:
	cd ${WRKSRC}; ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
