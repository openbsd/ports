# $OpenBSD: Makefile,v 1.3 2018/02/10 09:26:02 landry Exp $

V =		0.8.2.20180107
COMMENT =	open source engine remake of The Settlers 2 (s25client)
DISTNAME =	s25client-${V}
PKGNAME =	returntotheroots-${V}
CATEGORIES =	games x11

ONLY_FOR_ARCHS =	i386 amd64

HOMEPAGE =	https://www.siedler25.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL SDL_mixer boost_chrono-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt bz2 c execinfo iconv m miniupnpc
WANTLIB += ${MODLUA_WANTLIB}

MASTER_SITES =	https://devio.us/~bcallah/source/

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake \
		lang/lua
MODLUA_VERSION =	5.2

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	archivers/bzip2 \
		devel/boost \
		devel/libexecinfo \
		devel/sdl-mixer \
		net/miniupnp/miniupnpc

CONFIGURE_ARGS =	-DRTTR_ENABLE_WERROR:Bool=OFF \
			-DRTTR_EXTRA_BINDIR="${LOCALBASE}/libexec/s25rttr"

post-extract:
	@cp ${WRKSRC}/cmake/freebsd.cmake ${WRKSRC}/cmake/openbsd.cmake

pre-configure:
	sed -i 's,$${LOCALBASE},${LOCALBASE},g' \
		${WRKSRC}/libutil/src/getExecutablePath.cpp

# Doesn't do this on its own... but needs it
post-configure:
	@cp ${WRKSRC}/build_version_defines.h.cmake \
		${WRKBUILD}/build_version_defines.h

.include <bsd.port.mk>
