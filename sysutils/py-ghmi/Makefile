COMMENT =		pure python IPMI protocol library

MODPY_EGG_VERSION =	1.5.65
DISTNAME =		pyghmi-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/${MODPY_PY_PREFIX}/}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/openstack/pyghmi

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}

# Requires unported oslotest
NO_TEST =		Yes

.include <bsd.port.mk>
