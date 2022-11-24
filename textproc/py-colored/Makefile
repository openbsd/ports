COMMENT =		simple library for color and formatting in terminal

MODPY_EGG_VERSION =	1.4.4
DISTNAME =		colored-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

do-test:
	# other tests are slow to run and don't display colours when run
	# from ports infra
	PYTHONPATH=${WRKSRC} ${MODPY_BIN} ${WRKSRC}/tests/test_4.py

.include <bsd.port.mk>
