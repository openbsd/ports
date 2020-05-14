# $OpenBSD: Makefile,v 1.3 2020/05/14 19:35:30 bket Exp $

COMMENT =		statistical data visualization

MODPY_EGG_VERSION =	0.10.1
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
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR}>=2.1.2 \
			math/py-numpy${MODPY_FLAVOR}>=1.13.3 \
			math/py-pandas${MODPY_FLAVOR}>=0.22.0 \
			math/py-scipy${MODPY_FLAVOR}>=1.0.1

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

# TestAxesStyle.test_reset_orig is the only test that fails as it needs
# 'GTK3Agg' as backend.
TEST_ENV =		MPLBACKEND=AGG

.include <bsd.port.mk>
