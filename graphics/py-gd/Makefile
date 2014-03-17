# $OpenBSD: Makefile,v 1.20 2014/03/17 10:19:30 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper for the GD library

MODPY_EGG_VERSION= 0.58
DISTNAME=	gdmodule-${MODPY_EGG_VERSION}
DISTFILES=	${DISTNAME}{v${MODPY_EGG_VERSION}}${EXTRACT_SUFX}
PKGNAME=	py-${DISTNAME:L:S/module//}
CATEGORIES=	graphics

HOMEPAGE=	http://newcenturycomputers.net/projects/gdmodule.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype gd>=20 jpeg png pthread z ${MODPY_WANTLIB}

MASTER_SITES=	https://github.com/Solomoriah/gdmodule/archive/

MODULES=	lang/python

MODPY_SETUP=	Setup.py

LIB_DEPENDS=	graphics/gd

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-gd
DOCSDIR=	${PREFIX}/share/doc/py-gd

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Setup.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/demo/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/gd-ref.html ${DOCSDIR}

.include <bsd.port.mk>
