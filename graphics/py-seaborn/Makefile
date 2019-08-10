# $OpenBSD: Makefile,v 1.1.1.1 2019/08/10 03:48:32 bket Exp $

COMMENT =		statistical data visualization

MODPY_EGG_VERSION =	0.9.0
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

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR}>=1.4.3 \
			math/py-numpy${MODPY_FLAVOR}>=1.9.3 \
			math/py-pandas${MODPY_FLAVOR}>=0.15.2 \
			math/py-scipy${MODPY_FLAVOR}>=0.14.0

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# TestAxesStyle.test_reset_orig is the only test that fails as it needs
# 'GTK3Agg' as backend.
TEST_ENV =		MPLBACKEND=AGG

.include <bsd.port.mk>
