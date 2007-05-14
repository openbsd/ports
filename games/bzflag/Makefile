# $OpenBSD: Makefile,v 1.11 2007/05/14 20:40:15 naddy Exp $

COMMENT=	"graphical multiplayer 3-d tank war game"
DISTNAME=	bzflag-2.0.8
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}

HOMEPAGE=	http://www.bzflag.org/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

LIB_DEPENDS=	SDL.>=4::devel/sdl curl.>=3::net/curl

WANTLIB=	GL GLU ICE SM X11 Xau Xdmcp Xext c crypto iconv idn m \
		ncurses pthread ssl stdc++ usbhid z

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=gnu autoconf
CONFIGURE_ARGS+=--disable-adns --enable-debug
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" LDFLAGS="-L${LOCALBASE}/include"

pre-build:
	@sed -e 's|@LINUX_TRUE@||g ; s|@LINUX_FALSE@|#|g' \
		${WRKSRC}/src/platform/Makefile.in > \
		${WRKSRC}/src/platform/Makefile.sed
	@mv ${WRKSRC}/src/platform/Makefile.sed \
		${WRKSRC}/src/platform/Makefile.in

.include <bsd.port.mk>
