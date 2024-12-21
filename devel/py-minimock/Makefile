COMMENT=	the simplest possible mock library, for Python

MODPY_DISTV=	1.2.8
DISTNAME=	MiniMock-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
REVISION=	11

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}minimock/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}minimock/

.include <bsd.port.mk>
