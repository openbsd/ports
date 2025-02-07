COMMENT=	hypothesis strategies for generating Python programs

MODPY_DISTV=	0.3.3
DISTNAME=	hypothesmith-${MODPY_DISTV}
PKGNAME=	py-hypothesmith-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/Zac-HD/hypothesmith

# MPL 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-hypothesis \
		devel/py-libcst \
		textproc/py-lark

TEST_DEPENDS=	textproc/py-black \
		devel/py-parso \
		devel/py-test-cov \
		devel/py-test-xdist

.include <bsd.port.mk>
