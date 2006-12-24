# $OpenBSD: Makefile,v 1.2 2006/12/24 22:48:03 jasper Exp $

COMMENT=		"Joe's Window Manager"

DISTNAME=		jwm-1.8
CATEGORIES=		x11

HOMEPAGE=		http://www.joewing.net/programs/jwm/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xinerama Xpm Xrender \
			c fontconfig freetype m z

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		fribidi::devel/fribidi \
			png.>=2::graphics/png

NO_REGRESS=		Yes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include/ ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib/"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/jwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jwm
	${INSTALL_DATA} ${WRKSRC}/example.jwmrc \
		${PREFIX}/share/examples/jwm/system.jwmrc

.include <bsd.port.mk>
