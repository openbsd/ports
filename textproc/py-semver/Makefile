COMMENT=	python helper for Semantic Versioning

MODPY_EGG_VERSION=	3.0.2
DISTNAME=	semver-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/k-bx/python-semver

# BSD3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
