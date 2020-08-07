# $OpenBSD: Makefile,v 1.62 2020/08/07 09:21:02 jsg Exp $

COMMENT =		movie player based on MPlayer/mplayer2

GH_ACCOUNT =		mpv-player
GH_PROJECT =		mpv
GH_TAGNAME =		v0.32.0

SHARED_LIBS +=		mpv		0.1 # 1.107

CATEGORIES =		multimedia x11

HOMEPAGE =		https://mpv.io/

WAF =			${WRKSRC}/waf-2.0.19
MASTER_SITES0 =		https://waf.io/
DISTFILES =		${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX} ${WAF:T}:0
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += EGL GL SDL2 X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xss Xv Xxf86vm archive ass avcodec
WANTLIB += avdevice avfilter avformat avresample avutil bluray
WANTLIB += c cdio cdio_cdda cdio_paranoia drm dvdnav dvdread expat
WANTLIB += fontconfig freetype fribidi gbm iconv jpeg lcms2 m
WANTLIB += placebo postproc pthread sndio swresample swscale xcb
WANTLIB += xcb-dri2 xcb-glx xml2 z ${MODLUA_WANTLIB}

MODULES =		lang/lua \
			lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		audio/ladspa \
			textproc/py-docutils${MODPY_FLAVOR}

LIB_DEPENDS =		archivers/libarchive \
			audio/libcdio \
			audio/libcdio-paranoia \
			converters/libiconv \
			devel/sdl2 \
			graphics/ffmpeg>=4.1.1 \
			graphics/jpeg \
			graphics/lcms2 \
			graphics/libplacebo \
			multimedia/libass \
			multimedia/libbluray \
			multimedia/libdvdnav

MODPY_RUNDEP =		No
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	--confloaddir=${SYSCONFDIR}/mpv \
			--confdir=${LOCALBASE}/share/examples/mpv \
			--mandir=${LOCALBASE}/man \
			--docdir=${LOCALBASE}/share/examples/mpv \
			--enable-cdda \
			--enable-dvdnav \
			--enable-libmpv-shared \
			--enable-sndio \
			--enable-sdl2 \
			--disable-alsa \
			--disable-caca \
			--disable-cuda-hwaccel \
			--disable-egl-drm \
			--disable-gl-wayland \
			--disable-jack \
			--disable-rubberband \
			--disable-oss-audio \
			--disable-openal \
			--disable-optimize \
			--disable-pulse \
			--disable-rsound \
			--disable-libsmbclient \
			--disable-uchardet \
			--disable-vaapi \
			--disable-vaapi-drm \
			--disable-vaapi-x-egl \
			--disable-vaapi-x11 \
			--disable-vaapi-wayland \
			--disable-vapoursynth \
			--disable-vdpau \
			--disable-vdpau-gl-x11 \
			--disable-videotoolbox-gl \
			--disable-vulkan \
			--disable-wayland

MAKE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			RST2MAN=rst2man${MODPY_BIN_SUFFIX}
MAKE_FLAGS =		-o "${WRKBUILD}" -t "${WRKSRC}" --destdir="${DESTDIR}"

NO_TEST =		Yes

DO_WAF =		cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} \
				${WAF} ${MAKE_FLAGS}

LMAJ =			${LIBmpv_VERSION:R}
LMIN =			${LIBmpv_VERSION:E}
UPDATE_PLIST_ARGS +=	-i LMAJ -i LMIN
SUBST_VARS +=		LMAJ \
			LMIN

post-patch:
	cp ${DISTDIR}/${WAF:T} ${WAF}
	${SUBST_CMD} ${WRKSRC}/libmpv/client.h

do-configure:
	${DO_WAF} configure ${CONFIGURE_ARGS}

do-build:
	${DO_WAF} build -v

do-install:
	${DO_WAF} install
	${INSTALL_DATA} ${WRKDIST}/TOOLS/mpv_identify.sh \
		${WRKDIST}/TOOLS/umpv ${PREFIX}/share/examples/mpv
	${MODPY_BIN_ADJ} ${PREFIX}/share/examples/mpv/umpv
	sed -Ei 's,(/dev/dvd|/dev/cdrom),/dev/rcd0c,g' ${PREFIX}/man/man1/mpv.1

.include <bsd.port.mk>
