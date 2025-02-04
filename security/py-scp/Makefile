COMMENT =		scp module for Paramiko

MODPY_DISTV =		0.15.0
DISTNAME =		scp-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/jbardin/scp.py

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

# you can manually run ${WRKSRC}/test.py, but you'll need to be able
# to connect (unencrypted private key needed) and write files etc.
NO_TEST =		Yes

RUN_DEPENDS =		security/py-paramiko

.include <bsd.port.mk>
