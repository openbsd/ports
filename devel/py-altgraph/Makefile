COMMENT=	Python graph (network) package

MODPY_EGG_VERSION =	0.17.3
DISTNAME=	altgraph-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

# https://github.com/ronaldoussoren/altgraph
HOMEPAGE=	https://altgraph.readthedocs.io/

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
MODPY_PYTEST=	Yes

# py2 used by py-modulegraph -> math/prover9/p9m4
FLAVORS=	python3
FLAVOR?=

.include <bsd.port.mk>
