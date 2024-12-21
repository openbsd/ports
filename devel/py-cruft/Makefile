COMMENT =		utility to create and maintain projects from templates

MODPY_DISTV =	2.15.0
DISTNAME =		cruft-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://cruft.github.io/cruft/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		devel/git \
			devel/py-click>=7.1.2 \
			devel/py-cookiecutter>=1.7 \
			devel/py-gitpython>=3 \
			devel/py-poetry-core \
			devel/py-typer \
			textproc/py-toml>=0.10

NO_TEST =		Yes

.include <bsd.port.mk>
