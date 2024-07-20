COMMENT=	HTTP server for pytest

MODPY_EGG_VERSION=	1.0.11
DISTNAME=	pytest_httpserver-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/pytest_/py-test-/}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	www/py-werkzeug${MODPY_FLAVOR}

TEST_DEPENDS=	${BUILD_PKGPATH} \
		textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
