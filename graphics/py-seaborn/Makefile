# $OpenBSD: Makefile,v 1.6 2020/12/21 09:29:01 bket Exp $

COMMENT =		statistical data visualization

MODPY_EGG_VERSION =	0.11.1
DISTNAME =		seaborn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR}>=2.2.0 \
			math/py-numpy${MODPY_FLAVOR}>=1.15.0 \
			math/py-pandas${MODPY_FLAVOR}>=0.23.0 \
			math/py-scipy${MODPY_FLAVOR}>=1.0.0

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	x11

FLAVORS =		python3
FLAVOR =		python3

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
