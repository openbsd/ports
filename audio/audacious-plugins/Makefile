# $OpenBSD: Makefile,v 1.15 2008/09/15 22:02:44 jakemsr Exp $

SHARED_ONLY=	Yes

COMMENT-main=	input and output plugins for audacious
COMMENT-arts=	arts helper and plugin for audacious

V=		1.5.0
DISTNAME=	audacious-plugins-$V
PKGNAME-main=	${DISTNAME}p1
PKGNAME-arts=	audacious-arts-$Vp1

CATEGORIES=	audio multimedia

HOMEPAGE=	http://audacious-media-player.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv \
		intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png stdc++ z
WANTLIB-main=	${WANTLIB} dbus-1 dbus-glib-1 mowgli ogg samplerate ossaudio
WANTLIB-arts=	${WANTLIB} c pthread

MASTER_SITES=	http://distfiles.atheme.org/

EXTRACT_SUFX=	.tgz

MULTI_PACKAGES=	-main

BUILD_DEPENDS=	${RUN_DEPENDS-main}

RUN_DEPENDS-main=	:audacious->=1.5:audio/audacious
RUN_DEPENDS-arts=	::audio/audacious-plugins,-main

LIB_DEPENDS-main=	esd.>=2::audio/esound \
			faad.>=2,mp4ff.>=1::audio/faad \
			FLAC.>=7::audio/flac \
			jack::audio/jack \
			mp3lame::audio/lame \
			mad::audio/libmad \
			cddb,cdio,cdio_cdda::audio/libcdio \
			mpcdec.>=2::audio/libmpcdec \
			sndfile.>=2::audio/libsndfile \
			vorbis.>=5,vorbisfile.>=4,vorbisenc::audio/libvorbis \
			tag.>=6:taglib->=1.4:audio/taglib \
			audiofile::devel/libaudiofile \
			SDL.>=6::devel/sdl \
			curl.>=5::net/curl \
			neon.>=26::net/neon \
			xml2::textproc/libxml
LIB_DEPENDS-arts=	artsc.>=1::x11/kde/arts3

USE_X11=	Yes
USE_GMAKE=	Yes

PSEUDO_FLAVORS=	no_arts
FLAVOR?=

.if ${FLAVOR:Mno_arts}
CONFIGURE_ARGS+=--disable-arts
.else
MULTI_PACKAGES+=-arts
.endif

AUTOCONF_VERSION=	2.61

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--enable-ipv6 \
			--with-dev-dsp=/dev/audio \
			--disable-pulse \
			--disable-altivec \
			--disable-lirc \
			--disable-rootvis \
			--disable-adplug \
			--disable-wavpack \
			--disable-sid \
			--disable-alsa \
			--disable-amidiplug \
			--disable-mms \
			--disable-mtp_up \
			--disable-projectm \
			--disable-projectm-1.0
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS+=	--disable-sse2
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
