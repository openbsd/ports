# $OpenBSD: Makefile,v 1.6 2009/08/08 08:01:58 sthen Exp $

COMMENT=	economic and military simulation game

DISTNAME= 	widelands-build-11-source
PKGNAME=	widelands-0.11p2
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://widelands.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=widelands/}

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	SDL c m png pthread stdc++ z

LIB_DEPENDS=	SDL_gfx::devel/sdl-gfx \
		SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer \
		SDL_net::devel/sdl-net \
		SDL_ttf::devel/sdl-ttf

MODULES=	devel/gettext \
		devel/scons \
		lang/python
MODPY_RUNDEP=	No

WRKDIST=	${WRKDIR}/widelands

USE_X11=	Yes
NO_REGRESS=	Yes

MODSCONS_FLAGS=	\
	install_prefix=${PREFIX} \
	bindir=${PREFIX}/bin \
	datadir=${PREFIX}/share/widelands \
	localedir=${PREFIX}/share \
	extra_compile_flags="-I${LOCALBASE}/include/libpng ${CXXFLAGS}" \
	extra_include_path=${LOCALBASE}/include \
	extra_lib_path="${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,^#!/usr/bin/python,#!${MODPY_BIN},' \
		${WRKSRC}/utils/buildlocale.py

.include <bsd.port.mk>
