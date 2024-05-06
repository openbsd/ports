COMMENT =		check if a file is binary or text

MODPY_EGG_VERSION =	0.4.4
DISTNAME =		binaryornot-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

.include <bsd.port.mk>
