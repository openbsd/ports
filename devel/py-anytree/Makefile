COMMENT=		powerful and lightweight Python tree data structure

MODPY_EGG_VERSION=	2.8.0
DISTNAME=		anytree-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =	python3

TEST_DEPENDS=		graphics/py-dot${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/LICENSE \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/anytree-${MODPY_EGG_VERSION}-py${MODPY_VERSION}.egg-info/

.include <bsd.port.mk>
