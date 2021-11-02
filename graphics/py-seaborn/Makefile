# $OpenBSD: Makefile,v 1.8 2021/11/02 00:01:16 sthen Exp $

COMMENT =		statistical data visualization

MODPY_EGG_VERSION =	0.11.2
DISTNAME =		seaborn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		graphics math

HOMEPAGE =		https://seaborn.pydata.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	seaborn

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR}>=3.0 \
			math/py-numpy${MODPY_FLAVOR}>=1.16.0 \
			math/py-pandas${MODPY_FLAVOR}>=0.24.0 \
			math/py-scipy${MODPY_FLAVOR}>=1.2.0

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	x11

FLAVORS =		python3
FLAVOR =		python3

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
