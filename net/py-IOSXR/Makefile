COMMENT =		library to manage IOS-XR devices

MODPY_EGG_VERSION =	0.53
DISTNAME =		pyIOSXR-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		7

CATEGORIES =		net

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/py-netmiko${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
