# $OpenBSD: Makefile,v 1.8 2017/07/27 09:55:44 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open-source version of Doom 3

CATEGORIES =		games

HOMEPAGE =		https://github.com/dhewm/dhewm3

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 c curl jpeg m ogg openal pthread vorbis vorbisfile
WANTLIB += z
WANTLIB += ${COMPILER_LIBCXX}

GH_ACCOUNT =		dhewm
GH_PROJECT =		dhewm3
GH_TAGNAME =		1.4.1
REVISION =		0

MODULES =		devel/cmake

COMPILER =		gcc

LIB_DEPENDS =		devel/sdl2 \
			audio/openal \
			net/curl \
			audio/libvorbis \
			graphics/jpeg

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/neo

CFLAGS +=		-I${X11BASE}/include \
			-DLINUX_DEFAULT_PATH=\\\"${TRUEPREFIX}/share/dhewm3\\\"
CXXFLAGS +=		-I${X11BASE}/include \
			-DLINUX_DEFAULT_PATH=\\\"${TRUEPREFIX}/share/dhewm3\\\"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dhewm3
	${INSTALL_DATA_DIR} ${PREFIX}/share/dhewm3/base

.include <bsd.port.mk>
