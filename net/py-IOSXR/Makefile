COMMENT =		library to manage IOS-XR devices

MODPY_DISTV =	0.53
DISTNAME =		pyIOSXR-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		8

CATEGORIES =		net

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		net/py-netmiko \
			textproc/py-lxml

.include <bsd.port.mk>
