# $OpenBSD: Makefile,v 1.19 2013/06/04 18:41:50 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper for the GD library

DISTNAME=	gdmodule-0.56
PKGNAME=	py-${DISTNAME:L:S/module//}
REVISION=	7
CATEGORIES=	graphics

HOMEPAGE=	http://newcenturycomputers.net/projects/gdmodule.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	jpeg png z gd>=20 ${MODPY_WANTLIB}

MASTER_SITES=	http://newcenturycomputers.net/projects/download.cgi/

MODULES=	lang/python

MODPY_SETUP=	Setup.py

LIB_DEPENDS=	graphics/gd

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-gd
DOCSDIR=	${PREFIX}/share/doc/py-gd

do-configure:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g;" \
		-e "s,%%LIBPNG%%,${LOCALBASE}/include,g" \
			${WRKSRC}/${MODPY_SETUP}

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/gddemo.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/adventure.ttf ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/gd-ref.html ${DOCSDIR}

.include <bsd.port.mk>
