COMMENT=	city simulation game

# 2.15.0 needs devel/sdl3, devel/sdl3-image, but also sdl3-mixer and
# sdl3-ttf that we don't have yet, also there's some issue around
# std::from_chars in src/util/xmlutil.cpp. 2.15.0 fixes the issue that
# requires USE_NINJA=No.
V=		2.14.2
DISTNAME=	lincity-ng-$V-Source
PKGNAME=	lincity-ng-$V
EXTRACT_SUFX=	.tar.xz
SITES=		https://github.com/lincity-ng/lincity-ng/releases/download/lincity-ng-$V/

CATEGORIES=	games x11

HOMEPAGE=	https://github.com/lincity-ng/lincity-ng

# models, svg-files, images, sound and music, xml data: GPL or CC-by-sa-v2
# DejaVuSans.ttf: see COPYING-fonts.txt
# main code: GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer SDL2_ttf
WANTLIB += c fmt m xml++-5.0 xml2 z

MODULES=	devel/cmake
USE_NINJA=	No

# C++17
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	devel/fmt \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf \
		textproc/libxml++50
BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/libxslt
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic
NO_TEST=	Yes

.include <bsd.port.mk>
