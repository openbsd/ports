ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	3D realtime strategy on a future earth

V=		4.3.2
REVISION=	2
DISTNAME=	warzone2100-$V
CATEGORIES=	games
SITES=		https://github.com/Warzone2100/warzone2100/releases/download/$V/
DISTFILES=	warzone2100-${V}{warzone2100_src}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://wz2100.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcursor Xext Xfixes Xi Xrandr
WANTLIB += Xss c curl freetype fribidi harfbuzz iconv intl m miniupnpc
WANTLIB += ogg openal opus physfs png samplerate sndio sodium
WANTLIB += sqlite3 theoradec usbhid vorbis vorbisfile z

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	audio/libogg \
		audio/libsamplerate \
		audio/libvorbis \
		audio/openal \
		audio/opus \
		databases/sqlite3 \
		devel/fribidi \
		devel/harfbuzz \
		devel/physfs \
		graphics/png \
		multimedia/libtheora \
		net/curl \
		net/miniupnp/miniupnpc \
		security/libsodium

BUILD_DEPENDS=	archivers/libzip \
		archivers/unzip \
		archivers/zip \
		devel/gettext,-tools \
		devel/sdl2 \
		graphics/shaderc \
		textproc/asciidoc \
		textproc/asciidoctor \
		textproc/nlohmann-json
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

# needs glslc
CONFIGURE_ARGS+=	-DWZ_ENABLE_BACKEND_VULKAN=OFF
MODCMAKE_LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib

WRKDIST =	${WRKDIR}/warzone2100

.include <bsd.port.mk>
