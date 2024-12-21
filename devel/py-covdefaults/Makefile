COMMENT=	plugin for 'coverage' to provide sensible defaults

MODPY_DISTV=	2.3.0
DISTNAME=	covdefaults-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/asottile/covdefaults

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-coverage

# not in pypi sdist
NO_TEST=	Yes

.include <bsd.port.mk>
