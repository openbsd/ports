COMMENT =		high-performance web framework for building APIs with Python

MODPY_DISTV =		0.139.0
DISTNAME =		fastapi-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://fastapi.tiangolo.com/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		pdm
# XXX: needs various new ports
MODPY_PYTEST_ARGS =	--ignore tests/test_tutorial/test_sql_databases \
			--ignore tests/test_tutorial/test_graphql \
			--ignore tests/test_tutorial/test_wsgi

# XXX: needs devel/py-annotated-doc
RUN_DEPENDS =		devel/py-pydantic \
			devel/py-typing-extensions \
			devel/py-typing-inspection \
			www/py-starlette>=0.46.0

TEST_DEPENDS =		devel/py-dirty-equals \
			devel/py-inline-snapshot \
			devel/py-test-timeout \
			databases/py-sqlalchemy \
			textproc/py-orjson \
			mail/py-email-validator \
			www/py-flask \
			www/py-httpx \
			www/py-python-multipart

.include <bsd.port.mk>
