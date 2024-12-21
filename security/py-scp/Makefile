COMMENT =		scp module for Paramiko

MODPY_DISTV =	0.14.5
DISTNAME =		scp-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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

RUN_DEPENDS =		security/py-paramiko

.include <bsd.port.mk>
