# $OpenBSD: Makefile,v 1.41 2013/03/11 11:10:52 espie Exp $

COMMENT=	converts GIF images to the PNG format

DISTNAME=	gif2png-2.5.2
REVISION=	1
CATEGORIES=	graphics
HOMEPAGE=	http://www.catb.org/~esr/gif2png/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m z png

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	graphics/png

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-png-inc="${LOCALBASE}/include/libpng" \
		--with-png-lib="${LOCALBASE}/lib"

pre-build:
	@sed -e "s|@PREFIX@|${LOCALBASE}|g" \
		${FILESDIR}/web2png > ${WRKDIR}/web2png

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gif2png
	cd ${WRKSRC}; ${INSTALL_DATA} README ${PREFIX}/share/doc/gif2png
	${INSTALL_SCRIPT} ${WRKSRC}/web2png ${PREFIX}/libexec/web2png.bin
	${INSTALL_SCRIPT} ${WRKDIR}/web2png ${PREFIX}/bin

.include <bsd.port.mk>
