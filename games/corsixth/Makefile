# $OpenBSD: Makefile,v 1.3 2017/12/22 07:35:15 bcallah Exp $

ONLY_FOR_ARCHS =	${CXX11_ARCHS}

V =		0.61
COMMENT =	open source clone of Theme Hospital
PKGNAME =	corsixth-${V}
CATEGORIES =	games x11

GH_ACCOUNT =	CorsixTH
GH_PROJECT =	CorsixTH
GH_TAGNAME =	v${V}

# https site is a little broken.
HOMEPAGE =	http://corsixth.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer avcodec avformat
WANTLIB += avutil c freetype m swresample swscale ${MODLUA_WANTLIB}

# C++14
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake \
		lang/lua
MODLUA_VERSION =	5.3

LIB_DEPENDS =	devel/sdl2-mixer \
		graphics/ffmpeg

RUN_DEPENDS =	audio/timidity \
		devel/lpeg,${MODLUA_FLAVOR} \
		devel/luafs,${MODLUA_FLAVOR}

NO_TEST =	Yes

post-install:
	${SUBST_CMD} -c -m 555 ${FILESDIR}/CorsixTH ${PREFIX}/bin/CorsixTH

.include <bsd.port.mk>
