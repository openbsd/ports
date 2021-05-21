# $OpenBSD: Makefile,v 1.13 2021/05/21 19:50:33 kmos Exp $

# python3 flavour not needed for this port; the ipaddress module
# is available in core python 3.3+
COMMENT =		backport of Python 3.3's ipaddress for old Python

MODPY_EGG_VERSION =	1.0.23
DISTNAME =		ipaddress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		0

HOMEPAGE =		https://github.com/phihag/ipaddress

# Python
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
