COMMENT=	guess information from video filenames

MODPY_DISTV=	4.1.0
DISTNAME=	guessit-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	multimedia

# https://github.com/guessit-io/guessit
HOMEPAGE=	https://guessit-io.github.io/guessit

# LGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling
MODPY_PYTEST_ARGS= guessit

RUN_DEPENDS=	devel/py-dateutil \
		misc/py-babelfish \
		textproc/py-rebulk>=3
TEST_DEPENDS=	textproc/py-yaml \
		devel/py-test-benchmark \
		devel/py-test-mock

.include <bsd.port.mk>
