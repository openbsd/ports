COMMENT=	extensible memoizing collections and decorators

MODPY_DISTV=	5.5.0
DISTNAME=	cachetools-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tkem/cachetools

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}cachetools/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}cachetools/

.include <bsd.port.mk>
