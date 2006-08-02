# $OpenBSD: Makefile,v 1.7 2006/08/02 09:36:20 espie Exp $

BROKEN=		"problems loading data files; crashes"

COMMENT=	"graphical multiplayer 3-d tank war game"
DISTNAME=	bzflag-2.0.2.20050318
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}

HOMEPAGE=	http://www.bzflag.org/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=	Yes
USE_X11=	Yes

LIB_DEPENDS=	SDL.>=4::devel/sdl

WANTLIB=	GL GLU ICE SM X11 Xext c m ncurses pthread stdc++ usbhid z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-adns --disable-curl --enable-debug
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" LDFLAGS="-L${LOCALBASE}/include"

pre-build:
	@sed -e 's|@LINUX_TRUE@||g ; s|@LINUX_FALSE@|#|g' \
		${WRKSRC}/src/platform/Makefile.in > \
		${WRKSRC}/src/platform/Makefile.sed
	@mv ${WRKSRC}/src/platform/Makefile.sed \
		${WRKSRC}/src/platform/Makefile.in

.include <bsd.port.mk>
