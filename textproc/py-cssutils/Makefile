COMMENT=	parse and build CSS from Python

CATEGORIES=	textproc

MODPY_DISTV=	2.10.3
DISTNAME=	cssutils-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

# GPLv3
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://github.com/jaraco/cssutils

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

# tests also need jaraco.test (not in ports)
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-test-cov \
		devel/py-mock \
		textproc/py-lxml \
		textproc/py-cssselect

.include <bsd.port.mk>
