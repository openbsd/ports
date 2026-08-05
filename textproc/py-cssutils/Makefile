COMMENT=	parse and build CSS from Python

CATEGORIES=	textproc

MODPY_DISTV=	2.15.0
DISTNAME=	cssutils-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# LGPLv3
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://github.com/jaraco/cssutils

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

BUILD_DEPENDS=	misc/py-coherent.licensed
RUN_DEPENDS=	textproc/py-encutils \
		devel/py-more-itertools
TEST_DEPENDS=	devel/py-jaraco-test \
		devel/py-test-cov \
		devel/py-mock \
		textproc/py-lxml \
		textproc/py-cssselect

.include <bsd.port.mk>
