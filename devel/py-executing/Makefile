COMMENT=	get the currently executing AST node of a frame

MODPY_DISTV=	2.0.1
DISTNAME=	executing-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

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
