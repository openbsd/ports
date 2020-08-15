# $OpenBSD: Makefile,v 1.13 2020/08/15 20:30:56 rsadowski Exp $

V =		0.8.2.20180924
COMMENT =	open source engine remake of The Settlers 2 (s25client)
DISTNAME =	s25client-${V}
PKGNAME =	returntotheroots-${V}
CATEGORIES =	games x11
REVISION =	3

ONLY_FOR_ARCHS =	i386 amd64

HOMEPAGE =	https://www.siedler25.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL SDL_mixer boost_chrono-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt bz2 c execinfo iconv m miniupnpc
WANTLIB += ${MODLUA_WANTLIB}

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

# C++11
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/lua
MODLUA_VERSION =	5.2

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	archivers/bzip2 \
		devel/boost \
		devel/libexecinfo \
		devel/sdl-mixer \
		net/miniupnp/miniupnpc

CONFIGURE_ARGS =	-DRTTR_ENABLE_WERROR:Bool=OFF \
			-DRTTR_EXTRA_BINDIR="${LOCALBASE}/libexec/s25rttr"

pre-configure:
	sed -i 's,$${LOCALBASE},${LOCALBASE},g' \
		${WRKSRC}/libutil/src/getExecutablePath.cpp

.include <bsd.port.mk>
