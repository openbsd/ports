COMMENT=	Python tool configuration

MODPY_DISTV=	1.3.1
DISTNAME=	pytoolconfig-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/bagel897/pytoolconfig

# LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	pdm
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-tabulate \
		textproc/py-sphinx

.include <bsd.port.mk>
