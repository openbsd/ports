# $OpenBSD: Makefile,v 1.4 2019/12/21 14:21:13 jasper Exp $

COMMENT =		library to manage IOS-XR devices

MODPY_EGG_VERSION =	0.53
DISTNAME =		pyIOSXR-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		1

CATEGORIES =		net

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-netmiko${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
