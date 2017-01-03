# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:49 landry Exp $

COMMENT =		test your HTTP library against a local copy of httpbin

MODPY_EGG_VERSION =	0.2.3
DISTNAME =		pytest-httpbin-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/kevin1024/pytest-httpbin

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

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
