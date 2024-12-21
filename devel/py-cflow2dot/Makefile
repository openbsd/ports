COMMENT=	C call graphs using Cflow producing linked PDF

MODPY_DISTV=	0.2.3
DISTNAME=	pycflow2dot-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	4

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/cflow \
		graphics/py-dot \
		math/py-networkx
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	make -C ${WRKSRC}/tests

.include <bsd.port.mk>
