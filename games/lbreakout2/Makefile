# $OpenBSD: Makefile,v 1.10 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"breakout game with many levels, powerups, good graphics" 

DISTNAME=	lbreakout2-2.2.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://lgames.sourceforge.net/index.php?action=show_project&project=LBreakout2

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m pthread usbhid z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer \
		png.2.0::graphics/png
		
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=--with-doc-path=${PREFIX}/share/doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
