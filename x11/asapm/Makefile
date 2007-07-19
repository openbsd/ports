# $OpenBSD: Makefile,v 1.18 2007/07/19 13:06:40 ajacoutot Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. apm(4) needed
ONLY_FOR_ARCHS=	arm i386 macppc

COMMENT=	Advanced Power Management monitor utility for X

DISTNAME=	asapm-2.13
HOMEPAGE=	http://www.tigr.net/afterstep/

CATEGORIES=	x11

MASTER_SITES=	http://www.tigr.net/afterstep/download/asapm/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xpm c

LIB_DEPENDS=		jpeg.>=62::graphics/jpeg

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-afterdir=${PREFIX}/bin --enable-jpeg
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=		LIBS_JPEG="-ljpeg -L${LOCALBASE}/lib"
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/asapm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/asapm.man ${PREFIX}/man/man1/asapm.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asapm
	${INSTALL_DATA} ${WRKSRC}/asapmrc ${PREFIX}/share/examples/asapm/

.include <bsd.port.mk>
