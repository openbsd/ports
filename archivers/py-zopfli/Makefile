COMMENT=	cPython bindings for the zopfli compression library

MODPY_DISTV=	0.2.3
DISTNAME=	zopfli-${MODPY_DISTV}
PKGNAME=	py-zopfli-${MODPY_DISTV}
EXTRACT_SUFX=	.zip
REVISION=	2

CATEGORIES=	archivers

# Apache
PERMIT_PACKAGE=	Yes

WANTLIB +=	m zopfli zopflipng

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

LIB_DEPENDS=	archivers/zopfli
MAKE_ENV=	USE_SYSTEM_ZOPFLI=1 \
		CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
