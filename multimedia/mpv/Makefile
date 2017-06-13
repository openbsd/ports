# $OpenBSD: Makefile,v 1.36 2017/06/13 20:30:26 schwarze Exp $

# archs with atomic ops
ONLY_FOR_ARCHS =	alpha amd64 i386 mips64 mips64el powerpc sparc64
BROKEN-powerpc =	atomics detection fails

COMMENT =		movie player based on MPlayer/mplayer2

GH_ACCOUNT =		mpv-player
GH_PROJECT =		mpv
GH_TAGNAME =		v0.22.0
REVISION =		0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://mpv.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

WAF =			${WRKSRC}/waf-1.8.19
MASTER_SITES0 =		http://waf.io/
DISTFILES =		${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX} ${WAF:T}:0
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

# GPLv2+
PERMIT_PACKAGE_CDROM =	patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += EGL GL SDL2 X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xss Xv Xxf86vm ass avcodec
WANTLIB += avdevice avfilter avformat avresample avutil bluray
WANTLIB += c cdio cdio_cdda cdio_paranoia drm dvdnav dvdread expat
WANTLIB += fontconfig freetype fribidi gbm iconv jpeg lcms2 m
WANTLIB += opus postproc pthread pthread-stubs sndio speex swresample
WANTLIB += swscale v4l2 v4lconvert vpx x264 x265 xcb xcb-dri2
WANTLIB += xcb-glx z ${MODLUA_WANTLIB}

MODULES =		lang/lua \
			lang/python

BUILD_DEPENDS =		audio/ladspa \
			textproc/py-docutils

LIB_DEPENDS =		audio/libcdio \
			converters/libiconv \
			devel/libdvdread \
			devel/sdl2 \
			graphics/ffmpeg>=20151112 \
			graphics/jpeg \
			graphics/lcms2 \
			multimedia/libass \
			multimedia/libbluray>=0.8.0 \
			multimedia/libdvdnav \
			multimedia/libv4l

MODPY_RUNDEP =		No
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS =	--confloaddir=${SYSCONFDIR}/mpv \
			--confdir=${LOCALBASE}/share/examples/mpv \
			--mandir=${LOCALBASE}/man \
			--docdir=${LOCALBASE}/share/examples/mpv \
			--zshdir=${LOCALBASE}/share/zsh/vendor-completions \
			--enable-encoding \
			--enable-sndio \
			--enable-sdl2 \
			--enable-zsh-comp \
			--disable-alsa \
			--disable-caca \
			--disable-enca \
			--disable-jack \
			--disable-libarchive \
			--disable-libguess \
			--disable-rubberband \
			--disable-oss-audio \
			--disable-openal \
			--disable-optimize \
			--disable-pulse \
			--disable-rsound \
			--disable-libsmbclient \
			--disable-uchardet \
			--disable-vaapi \
			--disable-vaapi-glx \
			--disable-vaapi-hwaccel \
			--disable-vaapi-x-egl \
			--disable-vaapi-x11 \
			--disable-vaapi-wayland \
			--disable-vapoursynth \
			--disable-vapoursynth-lazy \
			--disable-vdpau \
			--disable-vdpau-hwaccel \
			--disable-videotoolbox-hwaccel \
			--disable-videotoolbox-gl \
			--disable-wayland

MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_ENV +=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
MAKE_FLAGS =		-o "${WRKBUILD}" -t "${WRKSRC}" --destdir="${DESTDIR}"

NO_TEST =		Yes

WRKBUILD =		${WRKSRC}/${MACHINE_ARCH}

.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i586
.endif

post-patch:
	cp ${DISTDIR}/${WAF:T} ${WAF}

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${WAF} \
				${MAKE_FLAGS} configure ${CONFIGURE_ARGS}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${WAF} \
				${MAKE_FLAGS} build -v

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${WAF} \
				${MAKE_FLAGS} install
	${INSTALL_DATA} ${WRKDIST}/TOOLS/mpv_identify.sh \
	                ${WRKDIST}/TOOLS/umpv \
	                	${PREFIX}/share/examples/mpv
	${MODPY_BIN_ADJ} ${PREFIX}/share/examples/mpv/umpv
	sed -Ei 's,(/dev/dvd|/dev/cdrom),/dev/rcd0c,g' ${PREFIX}/man/man1/mpv.1

.include <bsd.port.mk>
