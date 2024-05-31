COMMENT =		progress bar for Python

MODPY_EGG_VERSION =	4.66.2
DISTNAME =		tqdm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/tqdm/tqdm

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT/MPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS=		devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR}

.include <bsd.port.mk>
