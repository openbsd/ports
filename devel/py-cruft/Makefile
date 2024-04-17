COMMENT =		utility to create and maintain projects from templates

MODPY_EGG_VERSION =	2.15.0
DISTNAME =		cruft-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://cruft.github.io/cruft/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		devel/git \
			devel/py-click${MODPY_FLAVOR}>=7.1.2 \
			devel/py-cookiecutter${MODPY_FLAVOR}>=1.7 \
			devel/py-gitpython${MODPY_FLAVOR}>=3 \
			devel/py-poetry-core${MODPY_FLAVOR} \
			devel/py-typer${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}>=0.10

NO_TEST =		Yes

.include <bsd.port.mk>
