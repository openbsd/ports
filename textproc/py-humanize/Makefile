COMMENT =		python number humanization utilities

MODPY_EGG_VERSION =	4.3.0
DISTNAME =		humanize-${MODPY_EGG_VERSION}
PKGNAME =		py-humanize-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jmoiron/humanize

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR}

TEST_ENV =		PYTHONPATH=${WRKSRC}/src

.include <bsd.port.mk>
