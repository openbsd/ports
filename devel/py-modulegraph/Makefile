COMMENT=	Python module dependency analysis tool

MODPY_EGG_VERSION=	0.19.3
DISTNAME=	modulegraph-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	3

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes

MODPY_SETUPTOOLS=	Yes
FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS=	devel/py-altgraph${MODPY_FLAVOR}
TEST_DEPENDS=	${RUN_DEPENDS} \
		lang/python/${MODPY_VERSION},-idle

post-install:
	mv ${PREFIX}/bin/modulegraph{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
