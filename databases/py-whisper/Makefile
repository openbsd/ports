COMMENT =		fixed size round-robin style database

MODPY_DISTV =	1.1.10

DISTNAME =		whisper-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		databases
REVISION =		3

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		net/py-rrdtool

TEST_DEPENDS =		devel/py-mock \
			devel/py-six

.include <bsd.port.mk>
