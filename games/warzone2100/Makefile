ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	3D realtime strategy on a future earth

V=		4.2.4
DISTNAME=	warzone2100-$V
CATEGORIES=	games
MASTER_SITES=	https://github.com/Warzone2100/warzone2100/releases/download/$V/
DISTFILES=	warzone2100-${V}{warzone2100_src}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://wz2100.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c curl freetype harfbuzz intl
WANTLIB += m miniupnpc ogg openal physfs png sodium sqlite3 theoradec
WANTLIB += vorbis vorbisfile z

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	audio/libogg \
		audio/libvorbis \
		audio/openal>=20110627 \
		databases/sqlite3 \
		devel/harfbuzz \
		devel/physfs \
		devel/sdl2 \
		graphics/png \
		multimedia/libtheora \
		net/curl \
		net/miniupnp/miniupnpc \
		security/libsodium

BUILD_DEPENDS=	archivers/unzip \
		archivers/zip \
		devel/gettext,-tools \
		graphics/vulkan-headers \
		textproc/asciidoc \
		textproc/asciidoctor
RUN_DEPENDS=	devel/desktop-file-utils

WRKDIST =	${WRKDIR}/warzone2100

.include <bsd.port.mk>
