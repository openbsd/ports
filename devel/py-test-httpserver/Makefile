COMMENT=	HTTP server for pytest

MODPY_DISTV=	1.2.1
DISTNAME=	pytest_httpserver-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/pytest_/py-test-/}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-werkzeug

.include <bsd.port.mk>
