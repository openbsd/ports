COMMENT=	Python implementation of the patiencediff algorithm

MODPY_EGG_VERSION =	0.2.14
DISTNAME=	patiencediff-${MODPY_EGG_VERSION}
PKGNAME=	py-patiencediff-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://pypi.org/project/patiencediff/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# otherwise extension is not found and relevant tests are skipped
MODPY_TEST_DIR=	${WRKSRC}/build/lib.*

BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
