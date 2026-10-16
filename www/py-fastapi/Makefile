COMMENT =		high-performance web framework for building APIs with Python

# newer versions need opentelemetry-api
MODPY_DISTV =		0.141.1
DISTNAME =		fastapi-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# https://github.com/fastapi/fastapi
# https://fastapi.tiangolo.com/release-notes/
HOMEPAGE =		https://fastapi.tiangolo.com/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		pdm
MODPY_PI =		Yes

# needs various new ports
MODPY_PYTEST_IGNORE =	tests/test_tutorial/test_sql_databases \
			tests/test_tutorial/test_graphql \
			tests/test_tutorial/test_wsgi

RUN_DEPENDS =		www/py-starlette>=0.46.0 \
			devel/py-pydantic \
			devel/py-typing-extensions \
			devel/py-typing-inspection \
			devel/py-annotated_doc

TEST_DEPENDS =		devel/py-dirty-equals \
			devel/py-inline-snapshot \
			devel/py-pydantic-settings \
			devel/py-test-timeout \
			devel/py-test-xdist \
			databases/py-sqlalchemy \
			textproc/py-orjson \
			mail/py-email-validator \
			www/py-flask \
			www/py-httpx \
			www/py-python-multipart

.include <bsd.port.mk>
