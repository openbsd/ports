# $OpenBSD: Makefile,v 1.2 2009/06/17 01:53:33 sthen Exp $

COMMENT=	Cannon Smash 3D table tennis

DISTNAME=	csmash-0.6.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games
HOMEPAGE=	http://cannonsmash.sourceforge.net/

MAINTAINER=	Jason Dixon <jdixon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cannonsmash/}

USE_GMAKE=	Yes
USE_X11=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB+=	GL GLU ICE Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes \
		Xi Xinerama Xmu Xrandr Xrender Xt atk-1.0 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread stdc++ z X11 Xext m SDL

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@find ${WRKDIST} -name Makefile.in -exec \
		perl -pi -e 's,/games/,/,g' {} \;

.include <bsd.port.mk>
