COMMENT =		Python library for managing github repos

MODPY_DISTV =		2.10.0
DISTNAME =		pygithub-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://pygithub.readthedocs.io/en/stable/

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-deprecated \
			devel/py-typing-extensions \
			security/py-PyNaCl \
			www/py-jwt \
			www/py-requests \
			www/py-urllib3

TEST_DEPENDS =		devel/py-test-cov \
			www/py-responses

.include <bsd.port.mk>
