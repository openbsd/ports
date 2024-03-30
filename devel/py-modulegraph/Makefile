COMMENT=	Python module dependency analysis tool

MODPY_EGG_VERSION=	0.19.5
DISTNAME=	modulegraph-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-altgraph${MODPY_FLAVOR}
TEST_DEPENDS=	${RUN_DEPENDS} \
		${MODPY_RUN_DEPENDS},-idle

.include <bsd.port.mk>
