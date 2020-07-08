# $OpenBSD: Makefile,v 1.3 2020/07/08 21:40:43 thfr Exp $

COMMENT =	port of Quake 1 using Vulkan instead of OpenGL

V =		1.04.1
PKGNAME =	vkquake-${V}
GH_ACCOUNT =	Novum
GH_PROJECT =	vkQuake
GH_TAGNAME =	${V}
REVISION =	0

CATEGORIES =	games x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 X11-xcb c m mad ogg vorbis vorbisfile vulkan

COMPILER =	base-clang base-gcc gcc3
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

# remove some .orig files that mess with ports work
post-extract:
	rm ${WRKSRC}/../Misc/vq_pak/*.orig
	rm ${WRKSRC}/../Misc/vq_pak/maps/*.orig

pre-install:
	mkdir -p ${PREFIX}/share/vkquake/id1

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/vkquake.sh ${PREFIX}/bin/vkquake

.include <bsd.port.mk>
