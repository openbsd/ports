# $OpenBSD: Makefile,v 1.1.1.1 2007/07/10 08:37:19 ajacoutot Exp $

# Bus Error on startup
NOT_FOR_ARCHS=	sparc64

COMMENT=	isometric RPG game

DISTNAME=	freedroidrpg-0.10.2
CATEGORIES=	games x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://freedroid.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freedroid/}

WANTLIB=	GL SDL X11 Xext Xi c glib gmodule jpeg m ogg png \
		pthread usbhid vorbis z

MODULES=	devel/gettext
USE_X11=	Yes

LIB_DEPENDS=	gdk.>=3,gtk.>=3::x11/gtk+ \
		SDL_image.>=2::devel/sdl-image \
		SDL_mixer.>=3::devel/sdl-mixer \
		SDL_net.>=1::devel/sdl-net

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		am_cv_prog_tar_ustar=plaintar
CONFIGURE_ARGS=	--with-x \
		--enable-opengl \
		--enable-editors \
		--disable-backtrace

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/freedroidrpg

.include <bsd.port.mk>
