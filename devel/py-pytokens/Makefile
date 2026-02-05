COMMENT=	Python 3.14+ spec-compliant tokenizer

MODPY_DISTV=	0.4.1
DISTNAME=	pytokens-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tusharsadhwani/pytokens

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-mypy
TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
