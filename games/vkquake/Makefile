COMMENT =	port of Quake 1 using Vulkan instead of OpenGL

PKGNAME =	vkquake-${GH_TAGNAME}
GH_ACCOUNT =	Novum
GH_PROJECT =	vkQuake
GH_TAGNAME =	1.31.1

CATEGORIES =	games x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 c m mad ogg pthread vorbis vorbisfile vulkan

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =	graphics/glslang
LIB_DEPENDS =	audio/libmad \
		audio/libogg \
		audio/libvorbis \
		devel/sdl2 \
		graphics/vulkan-loader

MAKE_FLAGS =	bindir=${PREFIX}/share/vkquake \
		DO_USERDIRS=1 \
		X11BASE=${X11BASE}

USE_GMAKE =	Yes
NO_TEST =	Yes
WRKSRC =	${WRKDIST}/Quake
ALL_TARGET =	vkquake

pre-install:
	mkdir -p ${PREFIX}/share/vkquake/id1

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/vkquake.sh ${PREFIX}/bin/vkquake

.include <bsd.port.mk>
