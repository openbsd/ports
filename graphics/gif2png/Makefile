# $OpenBSD: Makefile,v 1.34 2006/08/03 12:43:20 espie Exp $

COMMENT=	"converts GIF images to the PNG format"

DISTNAME=	gif2png-2.5.1
CATEGORIES=	graphics
HOMEPAGE=	http://www.catb.org/~esr/gif2png/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	png.>=2::graphics/png

USE_GMAKE=	Yes
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
