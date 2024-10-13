COMMENT =		Python library for managing github repos

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		pygithub-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://pygithub.readthedocs.io/en/stable/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-deprecated${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			security/py-PyNaCl${MODPY_FLAVOR} \
			www/py-jwt${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			www/py-httpretty${MODPY_FLAVOR}

.include <bsd.port.mk>
