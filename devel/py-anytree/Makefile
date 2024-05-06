COMMENT=	powerful and lightweight Python tree data structure

MODPY_EGG_VERSION=	2.12.1
DISTNAME=	anytree-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/c0fec0de/anytree
HOMEPAGE=	https://anytree.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR}
FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
