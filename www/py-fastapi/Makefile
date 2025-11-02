COMMENT =		high-performance web framework for building APIs with Python

MODPY_DISTV =		0.117.1
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

RUN_DEPENDS =		devel/py-pydantic \
			devel/py-typing-extensions \
			www/py-starlette

# XXX: needs inline_snapshot
TEST_DEPENDS =		devel/py-dirty-equals \
			textproc/py-orjson \
			mail/py-email-validator \
			www/py-httpx

.include <bsd.port.mk>
