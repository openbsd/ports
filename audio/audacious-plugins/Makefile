# $OpenBSD: Makefile,v 1.22 2010/10/24 21:00:29 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT-main =	input and output plugins for audacious
COMMENT-jack =	jack plugin for audacious

V =		2.1
DISTNAME =	audacious-plugins-$V
PKGNAME-main =	${DISTNAME}
REVISION-main =	1
PKGNAME-jack =	audacious-jack-$V
REVISION-jack =	1

CATEGORIES =	audio multimedia

HOMEPAGE =	http://audacious-media-player.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv \
		intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread-stubs xcb xcb-render xcb-render-util z
WANTLIB-main =	${WANTLIB} cddb dbus-1 dbus-glib-1 mowgli ogg sndio stdc++ \
		faad.>=2 mp4ff.>=1 FLAC.>=7 mp3lame mad cdio cdio_cdda \
		mpcdec.>=2 sndfile.>=2 vorbis.>=5 vorbisfile.>=4 vorbisenc \
		tag.>=6 wavpack.>=0 SDL.>=6 curl.>=5 neon.>=26 xml2
WANTLIB-jack =	${WANTLIB} jack samplerate

MASTER_SITES =	http://distfiles.atheme.org/

EXTRACT_SUFX =	.tgz

MULTI_PACKAGES =	-main

BUILD_DEPENDS =	${RUN_DEPENDS-main}

RUN_DEPENDS-main =	:audacious->=1.5.1:audio/audacious
RUN_DEPENDS-jack =	::audio/audacious-plugins,-main

LIB_DEPENDS-main =	::audio/faad \
			::audio/flac \
			::audio/lame \
			::audio/libmad \
			::audio/libcdio \
			::audio/libmpcdec \
			::audio/libsndfile \
			::audio/libvorbis \
			:taglib->=1.4:audio/taglib \
			::audio/wavpack \
			::devel/sdl \
			::net/curl \
			::net/neon \
			::textproc/libxml
LIB_DEPENDS-jack =	::audio/jack

PSEUDO_FLAVORS =	no_jack
FLAVOR ?=

.if ${FLAVOR:Mno_jack}
CONFIGURE_ARGS += --disable-jack
.else
MULTI_PACKAGES += -jack
.endif

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.61

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--enable-ipv6 \
			--enable-sndio \
			--disable-esd \
			--disable-pulse \
			--disable-altivec \
			--disable-lirc \
			--disable-rootvis \
			--disable-adplug \
			--disable-arts \
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

NO_REGRESS =	Yes

post-patch:
	@mkdir -p ${WRKSRC}/src/sndio
	@cp ${FILESDIR}/{Makefile,sndio.c} ${WRKSRC}/src/sndio

.include <bsd.port.mk>
