# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:50 sthen Exp $

COMMENT =		relaxed test discovery/organization for pytest

MODPY_EGG_VERSION =	1.1.5

DISTNAME =		pytest-relaxed-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://pytest-relaxed.readthedocs.io/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-decorator${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
