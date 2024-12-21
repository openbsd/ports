COMMENT =		Python library for managing github repos

MODPY_DISTV =	2.4.0
DISTNAME =		pygithub-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://pygithub.readthedocs.io/en/stable/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-deprecated \
			devel/py-typing-extensions \
			security/py-PyNaCl \
			www/py-jwt \
			www/py-requests \
			www/py-urllib3

TEST_DEPENDS =		devel/py-test-cov \
			www/py-httpretty

.include <bsd.port.mk>
