# $OpenBSD: Makefile,v 1.1.1.1 2019/02/14 07:13:37 pvk Exp $

COMMENT =		AWS v4 authentication for py-requests

MODPY_EGG_VERSION =	0.9

DISTNAME =		requests-aws4auth-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}requests-aws4auth-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/sam-washington/requests-aws4auth

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR? =

NO_TEST =		Yes

.include <bsd.port.mk>
