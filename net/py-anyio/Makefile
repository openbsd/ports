COMMENT =		async library on top of asyncio or trio

MODPY_DISTV =		3.7.1
DISTNAME =		anyio-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		net

HOMEPAGE =		https://github.com/agronholm/anyio

MAINTAINER =		Wen Heping <wenheping2000@hotmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-sniffio \
			devel/py-trio \
			net/py-idna

TEST_DEPENDS =		devel/py-hypothesis \
			devel/py-test-mock \
			security/py-trustme \
			sysutils/py-psutil

.include <bsd.port.mk>
