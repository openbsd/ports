# $OpenBSD: Makefile,v 1.84 2020/06/09 07:14:44 jasper Exp $

PORTROACH = 	limitw:1,even

BROKEN-hppa =		missing atomic ops
COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.14.12
REVISION=	0

CATEGORIES=	games x11

MAINTAINER=	Kirill Bychkov <kirby@openbsd.org>

HOMEPAGE=	http://www.wesnoth.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SDL2 SDL2_image SDL2_mixer SDL2_ttf SM X11 Xext
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c cairo crypto dbus-1
WANTLIB += fontconfig freetype fribidi glib-2.0 gobject-2.0
WANTLIB += harfbuzz intl m pango-1.0 pangocairo-1.0 vorbisfile z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=	devel/cmake
# c++11
COMPILER = 	base-clang ports-gcc

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/boost>=1.66.0p0 \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf \
		devel/fribidi \
		devel/pango \
		x11/dbus

RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/libxslt \
		x11/gtk+3,-guic

CONFIGURE_ARGS+=-DFIFO_DIR=/var/wesnothd \
		-DSERVER_UID=708 \
		-DSERVER_GID=708 \
		-DENABLE_CAMPAIGN_SERVER=ON \
		-DENABLE_STRICT_COMPILATION=OFF \
		-DOPT=-O2 \
		-Wno_dev

NO_TEST=	Yes

.include <bsd.port.mk>
