# $OpenBSD: Makefile,v 1.40 2012/03/20 19:10:56 stsp Exp $

SHARED_ONLY =		Yes

COMMENT-main =		input and output plugins for audacious
COMMENT-jack =		jack plugin for audacious

V =			3.2
DISTNAME =		audacious-plugins-$V
PKGNAME-main =		${DISTNAME}
PKGNAME-jack =		audacious-jack-$V

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 audcore audgui cairo cairo-gobject
WANTLIB += expat fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs samplerate xcb
WANTLIB += xcb-render xcb-shm z ${MODGETTEXT_WANTLIB}

WANTLIB-main += ${WANTLIB} FLAC SDL audtag cddb cdio cdio_cdda cue curl
WANTLIB-main += dbus-1 dbus-glib-1 mpg123 neon notify ogg sndfile sndio
WANTLIB-main += stdc++ vorbis vorbisenc vorbisfile wavpack xml2

WANTLIB-jack += ${WANTLIB} jack

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

BUILD_DEPENDS =		${RUN_DEPENDS-main}

RUN_DEPENDS-main =	audio/audacious>=${V}
RUN_DEPENDS-jack =	audio/audacious-plugins,-main

LIB_DEPENDS-main =	audio/faad \
			audio/flac \
			audio/lame \
			audio/libcdio \
			audio/libcue \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/mpg123 \
			audio/wavpack \
			devel/libnotify>=0.7.2 \
			devel/sdl \
			net/curl \
			net/neon \
			textproc/libxml \
			x11/gtk+3 \
			x11/dbus-glib
LIB_DEPENDS-jack =	audio/jack \
			x11/gtk+3

PSEUDO_FLAVORS =	no_jack
FLAVOR ?=
MULTI_PACKAGES =	-main -jack

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-jack}
CONFIGURE_ARGS +=	--disable-jack
.endif

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68
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
