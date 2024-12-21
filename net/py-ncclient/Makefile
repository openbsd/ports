COMMENT =		Python library for NETCONF clients

MODPY_DISTV =	0.6.15

# using github distfile for tests
GH_ACCOUNT =		ncclient
GH_PROJECT =		ncclient
GH_TAGNAME =		v0.6.15

DISTNAME =		ncclient-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://ncclient.readthedocs.io/en/latest/

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-paramiko \
			devel/py-six \
			textproc/py-lxml

.include <bsd.port.mk>
