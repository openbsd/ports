COMMENT =		autocompletion tool for Python

MODPY_DISTV =	0.19.1
DISTNAME =		jedi-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://jedi.readthedocs.io

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-parso>=0.8.3,<0.9.0

TEST_DEPENDS =		devel/py-docopt \
			devel/py-colorama

# some tests need HOME to be writable
PORTHOME =		/tmp

.include <bsd.port.mk>
