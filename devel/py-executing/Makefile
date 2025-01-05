COMMENT=	get the currently executing AST node of a frame

MODPY_DISTV=	2.1.0
DISTNAME=	executing-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/alexmojaki/executing

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

TEST_DEPENDS=	devel/py-asttokens \
		devel/py-littleutils

.include <bsd.port.mk>
