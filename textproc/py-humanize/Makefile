COMMENT =		python number humanization utilities

MODPY_DISTV =	4.3.0
DISTNAME =		humanize-${MODPY_DISTV}
PKGNAME =		py-humanize-${MODPY_DISTV}
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jmoiron/humanize

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

TEST_DEPENDS =		devel/py-freezegun

TEST_ENV =		PYTHONPATH=${WRKSRC}/src

.include <bsd.port.mk>
