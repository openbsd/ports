# $OpenBSD: Makefile,v 1.13 2007/12/05 12:53:50 ajacoutot Exp $

COMMENT=	breakout game with many levels, powerups, good graphics

DISTNAME=	lbreakout2-2.6beta-7
CATEGORIES=	games x11

HOMEPAGE=	http://lgames.sourceforge.net/index.php?action=show_project&project=LBreakout2

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL c m pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

MODULES=	devel/gettext

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		png.>=2.0::graphics/png
		
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=--with-docdir=${PREFIX}/share/doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv -lintl"

USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
