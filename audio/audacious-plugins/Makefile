# $OpenBSD: Makefile,v 1.17 2009/08/10 06:29:52 kili Exp $

SHARED_ONLY =	Yes

COMMENT-main =	input and output plugins for audacious
COMMENT-jack =	jack plugin for audacious

V =		1.5.1
DISTNAME =	audacious-plugins-$V
PKGNAME-main =	${DISTNAME}p0
PKGNAME-jack =	audacious-jack-$Vp0

CATEGORIES =	audio multimedia

HOMEPAGE =	http://audacious-media-player.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv \
		intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread-stubs xcb z
WANTLIB-main =	${WANTLIB} dbus-1 dbus-glib-1 mowgli ogg sndio stdc++
WANTLIB-jack =	${WANTLIB} jack samplerate

MASTER_SITES =	http://distfiles.atheme.org/

EXTRACT_SUFX =	.tgz

MULTI_PACKAGES =	-main

BUILD_DEPENDS =	${RUN_DEPENDS-main}

RUN_DEPENDS-main =	:audacious->=1.5.1:audio/audacious
RUN_DEPENDS-jack =	::audio/audacious-plugins,-main

LIB_DEPENDS-main =	faad.>=2,mp4ff.>=1::audio/faad \
			FLAC.>=7::audio/flac \
			mp3lame::audio/lame \
			mad::audio/libmad \
			cddb,cdio,cdio_cdda::audio/libcdio \
			mpcdec.>=2::audio/libmpcdec \
			sndfile.>=2::audio/libsndfile \
			vorbis.>=5,vorbisfile.>=4,vorbisenc::audio/libvorbis \
			tag.>=6:taglib->=1.4:audio/taglib \
			wavpack.>=0::audio/wavpack \
			SDL.>=6::devel/sdl \
			curl.>=5::net/curl \
			neon.>=26::net/neon \
			xml2::textproc/libxml
LIB_DEPENDS-jack =	jack::audio/jack

PSEUDO_FLAVORS =	no_jack
FLAVOR ?=

.if ${FLAVOR:Mno_jack}
CONFIGURE_ARGS += --disable-jack
.else
MULTI_PACKAGES += -jack
.endif

USE_X11 =	Yes
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
