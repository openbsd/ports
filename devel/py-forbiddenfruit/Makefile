COMMENT=	patch Python built-in objects

MODPY_DISTV=	0.1.4
DISTNAME=	forbiddenfruit-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/clarete/forbiddenfruit

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# used for tests; @comment'ed
MAKE_ENV=	FFRUIT_EXTENSION=true
TEST_DEPENDS=	devel/py-nose

pre-test:
	cp ${WRKSRC}/build/lib.*/*.so ${WRKSRC}/tests/unit/

.include <bsd.port.mk>
