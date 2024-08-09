COMMENT =		movie player based on MPlayer/mplayer2

GH_ACCOUNT =		mpv-player
GH_PROJECT =		mpv
GH_TAGNAME =		v0.38.0
USE_NOBTCFI =		Yes
REVISION =		1

SHARED_LIBS +=		mpv		2.0

CATEGORIES =		multimedia x11

HOMEPAGE =		https://mpv.io/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODLUA_WANTLIB} EGL SDL2 X11 Xext Xpresent Xrandr
WANTLIB += Xss Xv archive ass avcodec avdevice avfilter avformat
WANTLIB += avutil bluray c cdio cdio_cdda cdio_paranoia drm dvdnav
WANTLIB += iconv jpeg lcms2 m placebo pthread sndio swresample
WANTLIB += swscale va va-drm va-x11 vulkan z zimg

MODULES =		devel/meson \
			lang/lua \
			lang/python

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS =		audio/ladspa \
			textproc/py-docutils${MODPY_FLAVOR}

LIB_DEPENDS =		archivers/libarchive \
			audio/libcdio \
			audio/libcdio-paranoia \
			converters/libiconv \
			devel/sdl2 \
			graphics/ffmpeg>=4.4.4p6 \
			graphics/jpeg \
			graphics/lcms2 \
			graphics/libplacebo \
			graphics/vulkan-loader \
			graphics/zimg \
			multimedia/libass \
			multimedia/libbluray \
			multimedia/libdvdnav

MODPY_RUNDEP =		No
RUN_DEPENDS =		devel/desktop-file-utils \
			graphics/vulkan-loader \
			www/yt-dlp \
			x11/gtk+4,-guic

CONFIGURE_ARGS =	-Dalsa=disabled \
			-Dandroid-media-ndk=disabled \
			-Daudiounit=disabled \
			-Davfoundation=disabled \
			-Dcaca=disabled \
			-Dcdda=enabled \
			-Dcocoa=disabled \
			-Dcoreaudio=disabled \
			-Dcuda-hwaccel=disabled \
			-Dcuda-interop=disabled \
			-Dd3d-hwaccel=disabled \
			-Dd3d11=disabled \
			-Dd3d9-hwaccel=disabled \
			-Ddirect3d=disabled \
			-Ddmabuf-wayland=disabled \
			-Ddrm=enabled \
			-Ddvbin=disabled \
			-Ddvdnav=enabled \
			-Degl-android=disabled \
			-Degl-angle-lib=disabled \
			-Degl-angle-win32=disabled \
			-Degl-angle=disabled  \
			-Degl-drm=disabled \
			-Degl-wayland=disabled \
			-Degl=enabled \
			-Dgbm=disabled \
			-Dgl-cocoa=disabled \
			-Dgl-dxinterop-d3d9=disabled \
			-Dgl-dxinterop=disabled \
			-Dgl-win32=disabled \
			-Dgl-x11=disabled \
			-Dios-gl=disabled \
			-Djack=disabled \
			-Djavascript=disabled \
			-Dlibmpv=true \
			-Dlua=lua${MODLUA_DEP_VERSION} \
			-Dmacos-cocoa-cb=disabled \
			-Dmacos-media-player=disabled \
			-Dmacos-touchbar=disabled \
			-Dopenal=disabled \
			-Dopensles=disabled \
			-Doss-audio=disabled \
			-Dpipewire=disabled \
			-Dpulse=disabled \
			-Drubberband=disabled \
			-Dsdl2-audio=disabled \
			-Dsdl2=enabled \
			-Dshaderc=disabled \
			-Dsixel=disabled \
			-Dsndio=enabled \
			-Dspirv-cross=disabled \
			-Dswift-build=disabled \
			-Dswift-flags=disabled \
			-Duchardet=disabled \
			-Dvaapi-drm=enabled \
			-Dvaapi-wayland=disabled \
			-Dvaapi-win32=disabled \
			-Dvaapi-x11=enabled \
			-Dvaapi=enabled \
			-Dvapoursynth=disabled \
			-Dvdpau-gl-x11=disabled \
			-Dvdpau=disabled \
			-Dvideotoolbox-gl=disabled \
			-Dvideotoolbox-pl=disabled \
			-Dvulkan-interop=disabled \
			-Dvulkan=enabled \
			-Dwasapi=disabled \
			-Dwayland=disabled \
			-Dwin32-threads=disabled

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib

MODMESON_CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" \
				LDFLAGS="${LDFLAGS}"

NO_TEST =		Yes

post-install:
	mv -f ${PREFIX}/share/doc/mpv ${PREFIX}/share/examples
	${INSTALL_DATA} ${WRKDIST}/TOOLS/mpv_identify.sh \
		${WRKDIST}/TOOLS/umpv ${PREFIX}/share/examples/mpv
	${MODPY_BIN_ADJ} ${PREFIX}/share/examples/mpv/umpv
	mv -f ${WRKINST}${SYSCONFDIR}/mpv/* ${PREFIX}/share/examples/mpv
	sed -Ei 's,(/dev/dvd|/dev/cdrom),/dev/rcd0c,g' ${PREFIX}/man/man1/mpv.1

.include <bsd.port.mk>
