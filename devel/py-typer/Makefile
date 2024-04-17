COMMENT =		library for building CLI applications

MODPY_EGG_VERSION =	0.12.3
DISTNAME =		typer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/tiangolo/typer

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		other

BUILD_DEPENDS =		devel/py-pdm-backend${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}>=8.0.0 \
			devel/py-typing-extensions${MODPY_FLAVOR}>=3.7.4.3

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR}>=6.2 \
			devel/py-rich${MODPY_FLAVOR}>=10.11.0 \
			devel/py-shellingham${MODPY_FLAVOR}>=1.3.0 \
			shells/bash \
			shells/fish \
			shells/zsh

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
