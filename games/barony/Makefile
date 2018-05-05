# $OpenBSD: Makefile,v 1.2 2018/05/05 08:23:17 ajacoutot Exp $

V =		3.1.4
COMMENT =	3D, first person roguelike
PKGNAME =	${DISTNAME:L}
CATEGORIES =	games x11

GH_ACCOUNT =	TurningWheel
GH_PROJECT =	Barony
GH_TAGNAME =	v${V}
REVISION =	0

HOMEPAGE =	http://www.baronygame.com/
MAINTAINER =	David Carlier <devnexen@gmail.com>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 SDL2_image SDL2_net
WANTLIB += SDL2_ttf c execinfo m ogg openal png vorbisfile

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		devel/libexecinfo \
		devel/sdl2 \
		devel/sdl2-image \
		devel/sdl2-net \
		devel/sdl2-ttf \
		graphics/png

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DOPENAL_ENABLED=ON \
			-DEDITOR_EXE_NAME="barony-editor" \
			-DDATA_DIR=ON \
			-DCMAKE_INSTALL_BINDIR="${LOCALBASE}/bin"

NO_TEST =	Yes

post-install:
	${SUBST_CMD} -m 555 -c ${FILESDIR}/barony.sh ${PREFIX}/bin/barony

.include <bsd.port.mk>
