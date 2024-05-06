COMMENT =		Python library for NETCONF clients

MODPY_EGG_VERSION =	0.6.15

# using github distfile for tests
GH_ACCOUNT =		ncclient
GH_PROJECT =		ncclient
GH_TAGNAME =		v0.6.15

DISTNAME =		ncclient-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://ncclient.readthedocs.io/en/latest/

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
