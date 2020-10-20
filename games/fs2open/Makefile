# $OpenBSD: Makefile,v 1.10 2020/10/20 17:13:10 cwen Exp $

# Requires OpenGL>=3.2, could run on powerpc64 once there is drm support
ONLY_FOR_ARCHS =	aarch64 amd64 i386

COMMENT =	open source game engine based on FreeSpace 2

V =		19.0.0
DISTNAME =	fs2_open_${V:S/./_/g}-source-Unix
PKGNAME =	fs2open-${V}
REVISION =	0

CATEGORIES =	games

HOMEPAGE =	https://github.com/scp-fs2open/fs2open.github.com

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Volition custom license (non-commercial, not really a license)
PERMIT_PACKAGE =	no license at all
PERMIT_DISTFILES =	no license at all

WANTLIB += ${COMPILER_LIBCXX} c m z
WANTLIB += SDL2 ${MODLUA_WANTLIB} openal
WANTLIB += avcodec avformat avutil freetype jpeg swresample swscale
WANTLIB += jansson png

MASTER_SITES =	https://github.com/scp-fs2open/fs2open.github.com/releases/download/release_${V:S/./_/g}/

# c++11
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua
LIB_DEPENDS =		audio/openal \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			devel/jansson

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/fs2open \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

# currently not building; would be ${WRKBUILD}/bin/unittests
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/fs2open.github.com

# remove bundled SDL
post-extract:
	rm -rf ${WRKSRC}/lib/libsdl

pre-patch:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' code/utils/boost/syncboundedqueue.h

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/fs2open ${PREFIX}/bin/fs2open

.include <bsd.port.mk>
