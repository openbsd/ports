# $OpenBSD: Makefile,v 1.13 2010/12/12 06:04:20 ajacoutot Exp $

COMMENT=	isometric RPG game

M_V=		0.14
DISTNAME=	freedroidrpg-${M_V}.1
CATEGORIES=	games x11

HOMEPAGE=	http://freedroid.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freedroid/freedroidRPG/freedroidRPG-${M_V}/}

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
