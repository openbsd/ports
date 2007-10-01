# $OpenBSD: Makefile,v 1.1.1.1 2007/10/01 21:37:28 simon Exp $

COMMENT=	economic and military simulation game

DISTNAME= 	widelands-build-11-source
PKGNAME=	widelands-0.11
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
WANTLIB=	X11 Xext SDL c m png pthread stdc++ usbhid z

LIB_DEPENDS=	SDL_gfx::devel/sdl-gfx \
		SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer \
		SDL_net::devel/sdl-net \
		SDL_ttf::devel/sdl-ttf

BUILD_DEPENDS=	::devel/scons

MODULES=	devel/gettext

WRKDIST=	${WRKDIR}/widelands

USE_X11=	Yes
NO_REGRESS=	Yes

pre-configure:
	perl -pi -e 's,^#!/usr/bin/python,#!${LOCALBASE}/bin/python2.4,' \
		${WRKSRC}/utils/buildlocale.py

do-build:
	@${SETENV} ${MAKE_ENV} scons -C ${WRKSRC} \
	install_prefix=${PREFIX} \
	bindir=${PREFIX}/bin \
	datadir=${PREFIX}/share/widelands \
	localedir=${PREFIX}/share/widelands \
	extra_compile_flags="-I${LOCALBASE}/include/libpng ${CXXFLAGS}" \
	extra_include_path=${LOCALBASE}/include \
	extra_lib_path="${LOCALBASE}/lib"

do-install:
	@${SETENV} ${FAKE_ENV} scons -C ${WRKSRC} install \
	install_prefix=${PREFIX} \
	bindir=${PREFIX}/bin \
	datadir=${PREFIX}/share/widelands \
	localedir=${PREFIX}/share/widelands \
	extra_compile_flags="-I${LOCALBASE}/include/libpng ${CXXFLAGS}" \
	extra_include_path=${LOCALBASE}/include \
	extra_lib_path="${LOCALBASE}/lib"

.include <bsd.port.mk>
