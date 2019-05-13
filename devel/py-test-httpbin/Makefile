# $OpenBSD: Makefile,v 1.5 2019/05/13 18:06:44 danj Exp $

COMMENT =		test your HTTP library against a local copy of httpbin

MODPY_EGG_VERSION =	0.2.3
DISTNAME =		pytest-httpbin-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://github.com/kevin1024/pytest-httpbin

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			www/py-httpbin${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
