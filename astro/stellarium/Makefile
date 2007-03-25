# $OpenBSD: Makefile,v 1.1.1.1 2007/03/25 12:29:22 ajacoutot Exp $

COMMENT=	"free open source planetarium"

DISTNAME=	stellarium-0.8.2
CATEGORIES=	astro x11

HOMEPAGE=	http://www.stellarium.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

WANTLIB=	freetype c pthread stdc++ usbhid Xext m GL X11 GLU z

USE_X11=	Yes
MODULES=	devel/gettext
LIB_DEPENDS=	png.>=5::graphics/png \
		SDL.>=6::devel/sdl \
		SDL_mixer.>=3::devel/sdl-mixer

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	--with-x

pre-configure:
	perl -pi -e 's,\@\@PREFIX\@\@,${PREFIX},g' ${WRKSRC}/data/stellarium.1

.include <bsd.port.mk>
