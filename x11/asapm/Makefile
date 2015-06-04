# $OpenBSD: Makefile,v 1.30 2015/06/04 07:29:50 jasper Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	Advanced Power Management monitor utility for X

DISTNAME=	asapm-3.1

HOMEPAGE=	http://www.tigr.net/afterstep/

CATEGORIES=	x11

MASTER_SITES=	http://www.tigr.net/afterstep/download/asapm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xpm c jpeg

LIB_DEPENDS=		graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-afterdir=${PREFIX}/bin --enable-jpeg
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=		LIBS_JPEG="-ljpeg -L${LOCALBASE}/lib"
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/asapm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/asapm.man ${PREFIX}/man/man1/asapm.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asapm
	${INSTALL_DATA} ${WRKSRC}/asapmrc ${PREFIX}/share/examples/asapm/

.include <bsd.port.mk>
