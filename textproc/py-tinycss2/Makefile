COMMENT=	tiny CSS parser

MODPY_DISTV=	1.4.0
DISTNAME=	tinycss2-${MODPY_DISTV}
PKGNAME=	py-tinycss2-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	yes

BUILD_DEPENDS=	textproc/py-webencodings
RUN_DEPENDS=	textproc/py-webencodings
TEST_DEPENDS=	devel/py-test-flake8 \
		devel/py-test-isort \
		devel/py-test-cov \
		devel/py-test-xdist

.include <bsd.port.mk>
