COMMENT =		HTTP library inspired by requests on top of Twisted Agents

MODPY_DISTV =		25.5.0
DISTNAME =		treq-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/twisted/treq

MAINTAINER =		Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-incremental
RUN_DEPENDS =		www/py-requests \
			devel/py-twisted \
			devel/py-incremental \
			devel/py-attrs \
			devel/py-typing-extensions \
			www/py-hyperlink \
			www/py-multipart
TEST_DEPENDS =		www/py-httpbin

.include <bsd.port.mk>
