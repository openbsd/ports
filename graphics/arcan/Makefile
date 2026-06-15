COMMENT =	powerful display server and multimedia framework

SHARED_LIBS +=  arcan_a12                 0.0 # 0.1
SHARED_LIBS +=  arcan_shmif               0.0 # 0.15
SHARED_LIBS +=  arcan_shmif_ext           0.0 # 0.15
SHARED_LIBS +=  arcan_shmif_intext        0.0 # 0.15
SHARED_LIBS +=  arcan_shmif_server        0.0 # 0.15
SHARED_LIBS +=  arcan_tui                 0.0 # 0.15

DIST_TUPLE =	codeberg letoram arcan 0.7.1 .
WRKDIST =	${WRKDIR}/arcan
WRKSRC =	${WRKDIST}/src

CATEGORIES =	graphics devel
HOMEPAGE =	https://arcan-fe.com

# BSD-3, GPLv2, LGPLv2
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} EGL GL SDL2 archive
WANTLIB += avcodec avdevice avfilter avformat avutil bz2 c curl
WANTLIB += display-info drm espeak-ng freetype gbm hunspell-1.7
WANTLIB += iconv lzma m magic openal sqlite3 swresample swscale
WANTLIB += tesseract util vlc vncclient vncserver wayland-server
WANTLIB += xcb xcb-composite xcb-icccm xcb-util xcb-xfixes xkbcommon
WANTLIB += z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/lua

MODLUA_VERSION =	5.1

BUILD_DEPENDS =		wayland/wayland-protocols

LIB_DEPENDS =		archivers/bzip2 \
			audio/espeak \
			audio/openal \
			databases/sqlite3 \
			devel/libmagic \
			graphics/ffmpeg \
			graphics/tesseract/tesseract \
			net/libvncserver \
			sysutils/libdisplay-info \
			textproc/hunspell \
			wayland/wayland \
			x11/vlc \
			x11/xkbcommon

CONFIGURE_ARGS =	-DVIDEO_PLATFORM=egl-dri \
			-DHYBRID_SDL=ON \
			-DHYBRID_HEADLESS=ON \
			-DDISABLE_JIT=ON \
			-DLIBVNC_INCLUDE_DIRS=${LOCALBASE}/include \
			-DCMAKE_DISABLE_FIND_PACKAGE_MuPDF=TRUE


MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
