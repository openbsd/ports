COMMENT=	measures number of terminal column cells of wide-char code

MODPY_DISTV=	0.9.2
DISTNAME=	wcwidth-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jquast/wcwidth

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov
MODPY_TEST_LINK_SO= Yes

.include <bsd.port.mk>
