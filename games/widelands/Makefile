# $OpenBSD: Makefile,v 1.12 2013/06/04 18:41:45 naddy Exp $

COMMENT=	economic and military simulation game

DISTNAME= 	widelands-build-11-source
PKGNAME=	widelands-0.11
REVISION =	3
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://widelands.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=widelands/}

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	SDL c m png pthread stdc++ z SDL_gfx SDL_image SDL_mixer \
		SDL_net SDL_ttf

LIB_DEPENDS=	devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf

MODULES=	devel/gettext \
		devel/scons \
		lang/python
MODPY_RUNDEP=	No

WRKDIST=	${WRKDIR}/widelands

NO_TEST=	Yes

MODSCONS_FLAGS=	\
	install_prefix=${PREFIX} \
	bindir=${PREFIX}/bin \
	datadir=${PREFIX}/share/widelands \
	localedir=${PREFIX}/share \
	extra_compile_flags="${CXXFLAGS}" \
	extra_include_path=${LOCALBASE}/include \
	extra_lib_path="${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,^#!/usr/bin/python,#!${MODPY_BIN},' \
		${WRKSRC}/utils/buildlocale.py

.include <bsd.port.mk>
