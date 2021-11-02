# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:40 sthen Exp $

COMMENT =		library to manage IOS-XR devices

MODPY_EGG_VERSION =	0.53
DISTNAME =		pyIOSXR-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		4

CATEGORIES =		net

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/py-netmiko${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
