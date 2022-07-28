COMMENT =	powerful display server and multimedia framework

SHARED_LIBS +=  arcan_a12                 0.0 # 0.1
SHARED_LIBS +=  arcan_shmif               0.0 # 0.15
SHARED_LIBS +=  arcan_shmif_ext           0.0 # 0.15
SHARED_LIBS +=  arcan_shmif_intext        0.0 # 0.15
SHARED_LIBS +=  arcan_shmif_server        0.0 # 0.15
SHARED_LIBS +=  arcan_tui                 0.0 # 0.15

GH_ACCOUNT =	letoram
GH_PROJECT =	arcan
GH_TAGNAME =	0.6.2

CATEGORIES =	graphics devel
HOMEPAGE =	https://arcan-fe.com

# BSD-3, GPLv2, LGPLv2
PERMIT_PACKAGE =	Yes

WRKSRC =		${WRKDIST}/src

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} EGL GL SDL2 archive avcodec avdevice
WANTLIB += avfilter avformat avutil bz2 c curl drm espeak freetype
WANTLIB += gbm iconv lzma m openal sqlite3 swresample swscale
WANTLIB += tesseract util vlc vncclient vncserver xkbcommon z
WANTLIB += ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/lua

MODLUA_VERSION =	5.1

LIB_DEPENDS =		archivers/bzip2 \
			audio/espeak \
			audio/openal \
			databases/sqlite3 \
			graphics/ffmpeg \
			graphics/tesseract/tesseract \
			net/libvncserver \
			x11/vlc \
			x11/xkbcommon

CONFIGURE_ARGS =	-DVIDEO_PLATFORM=egl-dri \
			-DHYBRID_SDL=ON \
			-DHYBRID_HEADLESS=ON \
			-DDISABLE_JIT=ON \
			-DDISABLE_WAYLAND=ON \
			-DLIBVNC_INCLUDE_DIRS=${LOCALBASE}/include

.include <bsd.port.mk>
