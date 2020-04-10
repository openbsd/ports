# $OpenBSD: Makefile,v 1.26 2020/04/10 14:59:48 cwen Exp $

COMMENT =	Enhanced Duke Nukem 3D engine
RDATE =		20191222
RTAG =		8494
DISTNAME =	eduke32_src_${RDATE}-${RTAG}
PKGNAME =	eduke32-2.0.0.${RTAG}
REVISION =	0
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	https://www.eduke32.com/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2, BUILD license and shareware data
PERMIT_PACKAGE =    "BUILD engine license is not compatible with GPLv2."
PERMIT_DISTFILES =  "BUILD engine license is not compatible with GPLv2."

BUILD_DEPENDS = archivers/unzip \
		graphics/gdk-pixbuf2

WANTLIB += c m ogg pthread vorbis vorbisfile vpx lz4 xmp
WANTLIB += SDL2 FLAC execinfo ${COMPILER_LIBCXX}

LIB_DEPENDS =	archivers/lz4 \
		audio/libxmp \
		audio/libvorbis \
		audio/flac \
		devel/sdl2 \
		devel/libexecinfo \
		multimedia/libvpx

# dlopen()'d; shows as Extra in check-lib-depends but it is used
LIB_DEPENDS +=	x11/gtk+2
WANTLIB +=	gtk-x11-2.0

RUN_DEPENDS =	games/duke3ddata

MASTER_SITES =	https://dukeworld.duke4.net/eduke32/synthesis/${RDATE}-${RTAG}/

COMPILER =	base-clang ports-gcc

# make sure we can see compilation output, respect CC/CXX, don't strip!
MAKE_FLAGS +=	PRETTY_OUTPUT=0 \
		CC="${CC}" \
		CXX="${CXX}" \
		STRIP=true \
		PACKAGE_REPOSITORY=1 \
		NOASM=1
MAKE_FILE =	GNUmakefile
USE_GMAKE =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/eduke32_${RDATE}-${RTAG}

.include <bsd.port.arch.mk>

.if !${PROPERTIES:Mlld}
MAKE_FLAGS +=	LTO=0
.endif

# Fix "undefined reference to `__atomic_load_8'"
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=	atomic
MAKE_FLAGS +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

post-extract:
	# check for data files in correct location
	@sed -i "s,/usr/share/games/eduke32,${TRUEPREFIX}/share/duke3d," \
		${WRKSRC}/source/duke3d/src/common.cpp
	rm ${WRKSRC}/source/build/include/lz4.h ${WRKSRC}/source/build/src/lz4.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/eduke32 ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/mapster32 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/duke3d
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eduke32
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/eduke32
	# mapster32 help files
	${INSTALL_DATA} ${WRKDIST}/package/sdk/m32help.hlp \
		${PREFIX}/share/duke3d/
	${INSTALL_DATA} ${WRKDIST}/package/sdk/SEHELP.HLP \
		${PREFIX}/share/duke3d/
	${INSTALL_DATA} ${WRKDIST}/package/sdk/STHELP.HLP \
		${PREFIX}/share/duke3d/
	# mapster32 config and config header file
	${INSTALL_DATA} ${WRKDIST}/package/sdk/tiles.cfg \
		${PREFIX}/share/duke3d/
	${INSTALL_DATA} ${WRKDIST}/package/sdk/names.h \
		${PREFIX}/share/duke3d/
	# eduke32/mapster32 licenses
	${INSTALL_DATA} ${WRKDIST}/package/common/gpl-2.0.txt \
		 ${PREFIX}/share/doc/eduke32/
	${INSTALL_DATA} ${WRKDIST}/package/common/buildlic.txt \
		${PREFIX}/share/doc/eduke32/
	# sample game mapping/modding data files
	${INSTALL_DATA} ${WRKDIST}/package/sdk/samples/* \
		${PREFIX}/share/examples/eduke32/

.include <bsd.port.mk>
