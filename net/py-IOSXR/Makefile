# $OpenBSD: Makefile,v 1.1.1.1 2018/04/25 14:19:26 jasper Exp $

COMMENT =		library to manage IOS-XR devices

MODPY_EGG_VERSION =	0.53
DISTNAME =		pyIOSXR-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}

CATEGORIES =		net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-netmiko${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
