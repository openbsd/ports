# $OpenBSD: Makefile,v 1.8 2009/08/10 06:31:42 kili Exp $

COMMENT=	drawing program for children

DISTNAME=	tuxpaint-0.9.20
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB=	SDL X11 Xau Xdmcp Xrender c cairo expat \
		fontconfig freetype gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 m pixman-1 png \
		pthread pthread-stubs xcb z

MODULES=	devel/gettext
LIB_DEPENDS=	SDL_image.>=2::devel/sdl-image \
		SDL_mixer.>=3::devel/sdl-mixer \
		SDL_ttf.>=7:sdl-ttf->=2.0.8:devel/sdl-ttf \
		rsvg-2.>=18::x11/gnome/librsvg \
		paper::print/libpaper \
		utf8.>=1::misc/libutf8 \
		SDL_Pango::devel/sdl-pango
RUN_DEPENDS=	::graphics/netpbm \
		:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR} OPTFLAGS="${CFLAGS}"
CFLAGS+=	-DHAVE_STRCASESTR

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,@\$$\(CC\),\$$\(CC\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/src/manpage/tuxpaint.1

.include <bsd.port.mk>
