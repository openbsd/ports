COMMENT=	Python module dependency analysis tool

MODPY_DISTV =	0.19.6
DISTNAME=	modulegraph-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-altgraph
TEST_DEPENDS=	${RUN_DEPENDS} \
		${MODPY_RUN_DEPENDS},-idle

.include <bsd.port.mk>
