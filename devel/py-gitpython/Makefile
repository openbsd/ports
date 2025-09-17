COMMENT=	library used to interact with Git repositories

MODPY_DISTV=	3.1.43
DISTNAME=	GitPython-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

RUN_DEPENDS=	devel/git \
		devel/py-gitdb

.include <bsd.port.mk>
