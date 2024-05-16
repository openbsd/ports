COMMENT=	pure-Python hyphenation library

MODPY_EGG_VERSION=	0.15.0
DISTNAME=	pyphen-${MODPY_EGG_VERSION}
PKGNAME=	py-pyphen-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

# GPLv2+/LGPLv2+/MPLv1.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR}

.include <bsd.port.mk>
