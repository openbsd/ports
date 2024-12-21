COMMENT =		pure python IPMI protocol library

MODPY_DISTV =	1.5.65
DISTNAME =		pyghmi-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/${MODPY_PY_PREFIX}/}
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/openstack/pyghmi

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-pbr \
			security/py-cryptography
RUN_DEPENDS =		devel/py-dateutil \
			security/py-cryptography

# Requires unported oslotest
NO_TEST =		Yes

.include <bsd.port.mk>
