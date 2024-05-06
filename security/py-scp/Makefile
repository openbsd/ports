COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.14.5
DISTNAME =		scp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/jbardin/scp.py

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# there are tests in test.py, but you'll need to be able to connect and
# write files etc.
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR}

.include <bsd.port.mk>
