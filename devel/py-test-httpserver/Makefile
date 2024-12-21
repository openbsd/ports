COMMENT=	HTTP server for pytest

MODPY_DISTV=	1.1.0
DISTNAME=	pytest_httpserver-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/pytest_/py-test-/}
CATEGORIES=	devel
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	www/py-werkzeug

TEST_DEPENDS=	${BUILD_PKGPATH} \
		textproc/py-toml

.include <bsd.port.mk>
