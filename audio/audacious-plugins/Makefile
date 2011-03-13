# $OpenBSD: Makefile,v 1.28 2011/03/13 20:33:55 shadchin Exp $

SHARED_ONLY =		Yes

COMMENT-main =		input and output plugins for audacious
COMMENT-jack =		jack plugin for audacious

V =			2.4.4
DISTNAME =		audacious-plugins-$V
PKGNAME-main =		${DISTNAME}
REVISION-main =		0
PKGNAME-jack =		audacious-jack-$V

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo dbus-1 \
		dbus-glib-1 drm expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 iconv intl m mcs mowgli pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs \
		samplerate xcb xcb-render xcb-shm z
WANTLIB-main =	${WANTLIB} FLAC>=7 SDL>=6 avcodec avformat avutil bz2 cddb \
		cdio cdio_cdda cue curl>=5 faac faad>=2 gsm mp3lame neon>=26 \
		notify ogg orc-0.4 schroedinger-1.0 sndfile>=2 sndio speex \
		stdc++ theora vorbis>=5 vorbisenc vorbisfile>=4 wavpack x264 \
		xml2
WANTLIB-jack =	${WANTLIB} jack

MASTER_SITES =		http://distfiles.atheme.org/

EXTRACT_SUFX =		.tgz

MULTI_PACKAGES =	-main

BUILD_DEPENDS =		${RUN_DEPENDS-main}

RUN_DEPENDS-main =	audio/audacious>=2.4.4
RUN_DEPENDS-jack =	audio/audacious-plugins,-main

LIB_DEPENDS-main =	audio/faad \
			audio/flac \
			audio/lame \
			audio/libcdio \
			audio/libcue \
			audio/libmpcdec \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/taglib>=1.4 \
			audio/wavpack \
			devel/libnotify \
			devel/sdl \
			graphics/ffmpeg \
			net/curl \
			net/neon \
			textproc/libxml
LIB_DEPENDS-jack =	audio/jack

PSEUDO_FLAVORS =	no_jack
FLAVOR ?=

.if ${FLAVOR:Mno_jack}
CONFIGURE_ARGS +=	--disable-jack
.else
MULTI_PACKAGES +=	-jack
.endif

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.61

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--enable-ipv6 \
			--enable-sndio \
			--disable-pulse \
			--disable-altivec \
			--disable-lirc \
			--disable-adplug \
			--disable-sid \
			--disable-oss \
			--disable-alsa \
			--disable-amidiplug \
			--disable-mms \
			--disable-mtp_up \
			--disable-projectm \
			--disable-projectm-1.0
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	--disable-sse2
.endif

NO_REGRESS =		Yes

post-patch:
	@mkdir -p ${WRKSRC}/src/sndio
	@cp ${FILESDIR}/{Makefile,sndio.c} ${WRKSRC}/src/sndio

.include <bsd.port.mk>
