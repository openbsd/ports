COMMENT=	Python implementation of the patiencediff algorithm

MODPY_DISTV =	0.2.15
DISTNAME=	patiencediff-${MODPY_DISTV}
PKGNAME=	py-patiencediff-${MODPY_DISTV}
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

BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
