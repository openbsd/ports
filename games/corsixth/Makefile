# $OpenBSD: Makefile,v 1.1.1.1 2017/07/31 22:14:44 bcallah Exp $

ONLY_FOR_ARCHS =	${CXX11_ARCHS}

V =		0.60.1
COMMENT =	open source clone of Theme Hospital
DISTNAME =	corsixth-${V}
CATEGORIES =	games x11

# Switch to GH_TAGNAME at next update.
GH_ACCOUNT =	CorsixTH
GH_PROJECT =	CorsixTH
#GH_TAGNAME =	v${V}
GH_COMMIT =	6a079fd02bc456be7410e4394d7661308e86b3bf

# https site is a little broken.
HOMEPAGE =	http://corsixth.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer avcodec avformat
WANTLIB += avutil c freetype m swresample swscale ${MODLUA_WANTLIB}

# base clang or ports gcc
COMPILER =	gcc

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
