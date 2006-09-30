# $OpenBSD: Makefile,v 1.10 2006/09/30 12:45:16 steven Exp $

COMMENT=	"graphical multiplayer 3-d tank war game"
DISTNAME=	bzflag-2.0.8
PKGNAME=	${DISTNAME}p1
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

WANTLIB=	GL GLU ICE SM X11 Xext c m ncurses pthread stdc++ usbhid z ssl crypto

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
