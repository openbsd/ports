COMMENT =		async library on top of asyncio or trio

MODPY_EGG_VERSION =	3.7.1
DISTNAME =		anyio-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/agronholm/anyio

MAINTAINER =		Wen Heping <wenheping2000@hotmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-exceptiongroup${MODPY_FLAVOR} \
			devel/py-sniffio${MODPY_FLAVOR} \
			devel/py-trio${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			security/py-trustme${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR}

.include <bsd.port.mk>
