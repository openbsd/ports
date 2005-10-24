# $OpenBSD: Makefile,v 1.4 2005/10/24 05:05:45 fgsch Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python wrapper for the GD library"

DISTNAME=	gdmodule-0.56
PKGNAME=	py-${DISTNAME:L:S/module//}
CATEGORIES=	graphics

HOMEPAGE=	http://newcenturycomputers.net/projects/gdmodule.html

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	jpeg png z

MASTER_SITES=	http://newcenturycomputers.net/projects/download.cgi/

MODULES=	lang/python

MODPY_SETUP=	Setup.py

LIB_DEPENDS=	gd.20::graphics/gd

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-gd
DOCSDIR=	${PREFIX}/share/doc/py-gd

do-configure:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g;" \
		-e "s,%%LIBPNG%%,${LOCALBASE}/include/libpng,g" \
			${WRKSRC}/${MODPY_SETUP}

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/gddemo.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/adventure.ttf ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/gd-ref.html ${DOCSDIR}

.include <bsd.port.mk>
