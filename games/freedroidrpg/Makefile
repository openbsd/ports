# $OpenBSD: Makefile,v 1.12 2010/11/16 11:23:26 espie Exp $

COMMENT=	isometric RPG game

DISTNAME=	freedroidrpg-0.13
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

WANTLIB=	GL SDL X11 c jpeg m ogg png pthread vorbis z \
		SDL_image>=2 SDL_mixer>=3 execinfo


LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/libexecinfo

# needed to avoid a SIGSEGV
# (int i corruption in enemy.c line 2056:
# should be "0" or "1" instead of a nonsense negative value)
MODULES+=	gcc4
MODGCC4_ARCHES=	*

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTHREAD_CFLAGS="-pthread" \
		PTHREAD_LIBS="-pthread" \
		am_cv_prog_tar_ustar=plaintar
CONFIGURE_ARGS=	--with-x \
		--enable-opengl

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/freedroidrpg

.include <bsd.port.mk>
