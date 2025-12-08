COMMENT=	javascript minifier written in python

MODPY_DISTV=	1.2.5
DISTNAME=	rjsmin-${MODPY_DISTV}
PKGNAME=	py-rjsmin-${MODPY_DISTV}

CATEGORIES=	textproc devel

HOMEPAGE=	https://opensource.perlig.de/rjsmin/

# Apache 2.0
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-clang
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
