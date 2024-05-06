COMMENT=	Python module to parse ISO 8601 dates

MODPY_EGG_VERSION=	2.1.0
DISTNAME=	iso8601-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/micktwomey/pyiso8601

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-hypothesis${MODPY_FLAVOR}

.include <bsd.port.mk>
