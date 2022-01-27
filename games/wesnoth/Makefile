# $OpenBSD: Makefile,v 1.94 2022/01/27 06:08:19 kirby Exp $

PORTROACH = 	limitw:1,even

BROKEN-hppa =	missing atomic ops
COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.16.2

CATEGORIES=	games x11

MAINTAINER=	Kirill Bychkov <kirby@openbsd.org>

HOMEPAGE=	https://www.wesnoth.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer
WANTLIB += boost_atomic-mt boost_chrono-mt boost_context-mt
WANTLIB += boost_coroutine-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c cairo crypto dbus-1
WANTLIB += fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += harfbuzz icudata icui18n icuuc intl m pango-1.0
WANTLIB += pangocairo-1.0 ssl vorbisfile z ${COMPILER_LIBCXX}

MODULES=	devel/cmake
# c++17
COMPILER = 	base-clang ports-gcc

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/boost,-md \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/pango \
		x11/dbus

RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/libxslt \
		x11/gtk+3,-guic

CONFIGURE_ARGS+=-DFIFO_DIR=${VARBASE}/wesnothd \
		-DSERVER_UID=708 \
		-DSERVER_GID=708 \
		-DENABLE_CAMPAIGN_SERVER=ON \
		-DENABLE_STRICT_COMPILATION=OFF \
		-DCMAKE_EXE_LINKER_FLAGS=-lpthread \
		-DHAVE_SYS_SENDFILE_H=0 \
		-DOPT=-O2 \
		-Wno_dev

NO_TEST=	Yes

.include <bsd.port.mk>
