PORTROACH = 	limitw:1,even

BROKEN-hppa =	missing atomic ops
COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.18.0

CATEGORIES=	games x11

MAINTAINER=	Kirill Bychkov <kirby@openbsd.org>

HOMEPAGE=	https://www.wesnoth.org/

SITES=		${SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer boost_context-mt
WANTLIB += boost_coroutine-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt c cairo crypto curl dbus-1
WANTLIB += fontconfig glib-2.0 gobject-2.0
WANTLIB += harfbuzz icudata icui18n icuuc intl m pango-1.0
WANTLIB += pangocairo-1.0 ssl vorbisfile ${COMPILER_LIBCXX}

MODULES=	devel/cmake
# c++17
COMPILER = 	base-clang ports-gcc

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	audio/libvorbis \
		devel/boost,-md \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/pango \
		net/curl \
		x11/dbus

RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/libxslt \
		x11/gtk+4,-guic

CONFIGURE_ARGS+=-DFIFO_DIR=${VARBASE}/wesnothd \
		-DSERVER_UID=708 \
		-DSERVER_GID=708 \
		-DENABLE_CAMPAIGN_SERVER=ON \
		-DENABLE_STRICT_COMPILATION=OFF \
		-DHAVE_SYS_SENDFILE_H=0 \
		-DOPT=-O2 \
		-Wno_dev

MODCMAKE_LDFLAGS =	-lpthread

NO_TEST=	Yes

.include <bsd.port.mk>
