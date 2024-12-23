COMMENT=	pure-Python hyphenation library

MODPY_DISTV=	0.17.0
DISTNAME=	pyphen-${MODPY_DISTV}
PKGNAME=	py-pyphen-${MODPY_DISTV}

CATEGORIES=	textproc

# GPLv2+/LGPLv2+/MPLv1.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-xdist

.include <bsd.port.mk>
