COMMENT =		common testing tools used in the Salt Stack projects

MODPY_DISTV =	2018.9.21
DISTNAME =		salt-testing-${MODPY_DISTV}
GH_ACCOUNT =		saltstack
GH_PROJECT =		salt-testing
GH_COMMIT =		70145afcc5eb96bf15b22631dcb364caf19b1fc1
REVISION =		6

CATEGORIES =		sysutils

HOMEPAGE =		https://saltstack.org/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-mock \
			devel/py-six \
			sysutils/py-psutil \
			sysutils/salt

.include <bsd.port.mk>
