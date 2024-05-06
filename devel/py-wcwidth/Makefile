COMMENT=	measures number of terminal column cells of wide-char code

MODPY_EGG_VERSION=	0.2.13

DISTNAME=	wcwidth-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jquast/wcwidth

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
