# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:44 sthen Exp $

COMMENT =		library to manage IOS-XR devices

MODPY_EGG_VERSION =	0.53
DISTNAME =		pyIOSXR-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
