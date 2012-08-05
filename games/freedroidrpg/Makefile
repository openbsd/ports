# $OpenBSD: Makefile,v 1.20 2012/08/05 08:05:38 sthen Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}
SHARED_ONLY=	Yes # XXX lua.port.mk bug
# The lua module marks packages PKG_ARCH=* unless they are SHARED_ONLY.
# To be fixed in lua, but marking this SHARED_ONLY as a temporary workaround
# and doesn't hurt anyway as freedroidrpg is gcc4-only.

COMMENT=	isometric RPG game

DISTNAME =	freedroidRPG-0.15.1
REVISION =	1
PKGNAME =	${DISTNAME:L}
CATEGORIES=	games x11

HOMEPAGE =	http://www.freedroid.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += GL SDL SDL_gfx SDL_image SDL_mixer X11 c execinfo jpeg
WANTLIB += ${MODLUA_WANTLIB} m ogg png pthread vorbis z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=freedroid/}

WRKDIST =	${WRKDIR}/${DISTNAME:L}

MODULES=	lang/lua
MODLUA_SA =	Yes

LIB_DEPENDS=	devel/libexecinfo \
		devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		${MODLUA_LIB_DEPENDS}

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
