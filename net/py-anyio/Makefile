COMMENT =		async library on top of asyncio or trio

MODPY_DISTV =		4.9.0
DISTNAME =		anyio-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/agronholm/anyio

MAINTAINER =		Wen Heping <wenheping2000@hotmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-sniffio \
			devel/py-typing-extensions \
			net/py-idna

TEST_DEPENDS =		devel/py-blockbuster \
			devel/py-exceptiongroup \
			devel/py-hypothesis \
			devel/py-trio \
			devel/py-uvloop \
			security/py-trustme \
			sysutils/py-psutil

.include <bsd.port.mk>
