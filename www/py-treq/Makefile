COMMENT =		HTTP library inspired by requests on top of Twisted Agents

MODPY_DISTV =	24.9.1
DISTNAME =		treq-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/twisted/treq

MAINTAINER =		Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-incremental
RUN_DEPENDS =		www/py-requests \
			devel/py-twisted \
			devel/py-incremental \
			devel/py-attrs \
			devel/py-six
TEST_DEPENDS =		www/py-httpbin

.include <bsd.port.mk>
