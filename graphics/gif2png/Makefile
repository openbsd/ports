# $OpenBSD: Makefile,v 1.43 2014/10/30 10:15:59 sthen Exp $

COMMENT=	converts GIF images to the PNG format

DISTNAME=	gif2png-2.5.9
CATEGORIES=	graphics
HOMEPAGE=	http://www.catb.org/~esr/gif2png/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m png z

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	graphics/png

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--with-png-inc="${LOCALBASE}/include" \
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
