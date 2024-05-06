COMMENT=	get the currently executing AST node of a frame

MODPY_EGG_VERSION=	2.0.1
DISTNAME=	executing-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/alexmojaki/executing

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-asttokens${MODPY_FLAVOR} \
		devel/py-littleutils${MODPY_FLAVOR}

.include <bsd.port.mk>
