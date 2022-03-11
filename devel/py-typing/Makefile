COMMENT =		backport of type hints for python

MODPY_EGG_VERSION =	3.7.4.1
DISTNAME =		typing-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python/typing

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# PSF
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	python2

# No python3 flavor as this backports typing to earlier Python

.include <bsd.port.mk>
