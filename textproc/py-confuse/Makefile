COMMENT=	painless YAML configuration

MODPY_EGG_VERSION=	2.0.1
DISTNAME=	confuse-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/beetbox/confuse

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

RUN_DEPENDS=	textproc/py-yaml${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
