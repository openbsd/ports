# $OpenBSD: Makefile,v 1.136 2011/10/21 18:20:14 espie Exp $

SHARED_ONLY=	Yes

COMMENT-main=	VideoLAN client; multimedia player

V=		1.0.6
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
REVISION-main=	34
REVISION-jack=	6
REVISION-web=	8
CATEGORIES=	x11
MASTER_SITES=	http://download.videolan.org/pub/videolan/vlc/${V}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	vlc		0.0 \
		vlccore		0.0

HOMEPAGE=	http://www.videolan.org/vlc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/qt4
LIB_DEPENDS+=	x11/dbus
LIB_DEPENDS-main=${LIB_DEPENDS} \
		audio/faad \
		audio/libcddb \
		audio/libvorbis \
		audio/speex \
		audio/taglib \
		devel/fribidi \
		devel/libdvdread \
		devel/libnotify>=0.7.2 \
		devel/sdl-image \
		graphics/ffmpeg>=20080620p10 \
		graphics/libdvbpsi \
		graphics/png \
		multimedia/libdvdnav \
		multimedia/libmatroska \
		multimedia/schroedinger>=1.0.10 \
		multimedia/x264 \
		net/libproxy \
		textproc/libebml \
		textproc/libxml \
		x11/qt4
RUN_DEPENDS=	devel/desktop-file-utils

WANTLIB-main=	GL GLU ICE lib/qt4/QtGui SM SDL SDL_image X11 Xau \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrender Xv \
		Xxf86vm avcodec avformat avutil bz2 c cddb dbus-1 \
		drm dvbpsi dvdnav dvdread ebml expat faad fontconfig \
		freetype fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gsm gthread-2.0 jpeg m \
		matroska modman mp3lame notify orc-0.4 ogg pcre \
		png postproc proxy pthread-stubs pthread stdc++ \
		schroedinger-1.0>=2.0 sndio speex swscale tag tiff \
		theoradec theoraenc usbhid vorbis vorbisenc vpx x264 \
		xcb-keysyms xcb xml2 z ${WANTLIB}

CPPFLAGS=	-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.65
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autotools
CONFIGURE_ARGS+=--disable-a52 \
		--disable-alsa \
		--disable-altivec \
		--disable-bonjour \
		--disable-cmml \
		--disable-dca \
		--disable-fluidsynth \
		--disable-dvb \
		--disable-fluidsynth \
		--disable-gme \
		--disable-gnutls \
		--disable-hal \
		--disable-kate \
		--disable-libgcrypt \
		--disable-libmpeg2 \
		--disable-libtar \
		--disable-libv4l2 \
		--disable-live555 \
		--disable-lua \
		--disable-mad \
		--disable-mod \
		--disable-mpc \
		--disable-mtp \
		--disable-oss \
		--disable-pulse \
		--disable-remoteosd \
		--disable-skins2 \
		--disable-smb \
		--disable-tiger \
		--disable-udev \
		--disable-upnp \
		--disable-zvbi \
		--enable-dvdread \
		--enable-faad \
		--enable-real \
		--enable-realrtsp \
		--enable-release \
		--without-contrib \
		--without-tuning
CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/qt4/pkgconfig" \
		LOCALBASE=${LOCALBASE}

MULTI_PACKAGES=-main -web -jack

PSEUDO_FLAVORS=	no_web no_jack
FLAVOR?=

.include <bsd.port.arch.mk>

COMMENT-web=	Mozilla plugin for embedded media playback
PKGNAME-web=	vlc-web-${V}
LIB_DEPENDS-web=${LIB_DEPENDS} \
		${BUILD_PKGPATH} \
		devel/nspr
RUN_DEPENDS-web=${BUILD_PKGPATH}
WANTLIB-web=	ICE SM X11 Xau Xdmcp Xt Xpm m nspr4 plc4 plds4 \
		pthread-stubs stdc++ vlc vlccore xcb dbus-1 \
		${WANTLIB}

.if ${BUILD_PACKAGES:M-web}
BUILD_DEPENDS+=	devel/xulrunner/1.9,-devel>=1.9
CONFIGURE_ARGS+=--enable-mozilla --with-mozilla-sdk-path=${LOCALBASE}/xulrunner1.9
CONFIGURE_ENV+=	with_mozilla_pkg="libxul"
CPPFLAGS+=	-I${LOCALBASE}/include/nspr -I${LOCALBASE}/xulrunner1.9/include -DOPENBSD
PORTPATH=	${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/xulrunner1.9
.endif

COMMENT-jack=	jackd audio output module for VLC
PKGNAME-jack=vlc-jack-${V}
LIB_DEPENDS-jack=${LIB_DEPENDS} \
		 ${BUILD_PKGPATH} \
		 audio/jack
RUN_DEPENDS-jack=${BUILD_PKGPATH}
WANTLIB-jack=	${WANTLIB} m jack vlccore dbus-1

.if ${BUILD_PACKAGES:M-jack}
CONFIGURE_ARGS+=--enable-jack
.endif

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=-Damd64=1
.else
PKG_ARGS+=-Damd64=0
.endif

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

pre-configure:
	@perl -pi -e 's/grep -v /grep -av /' ${WRKSRC}/src/Makefile.in
	@find ${WRKSRC} -name 'Makefile.in' -exec perl -pi -e 's/-export-symbol-regex/-export-symbols-regex/' {} \;

post-install:
.for _img in 16x16 32x32 48x48 128x128
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${_img}/apps
	${INSTALL_DATA} ${WRKBUILD}/share/vlc${_img}.png \
	    ${PREFIX}/share/icons/hicolor/${_img}/apps/vlc.png
.endfor
.if ${BUILD_PACKAGES:M-web}
	@rm ${PREFIX}/lib/mozilla/plugins/libvlcplugin.a
.endif
	@find ${PREFIX}/lib/vlc -name '*.a' -print | xargs rm
	@find ${PREFIX}/lib -name '*.la' -print | xargs rm

.include <bsd.port.mk>
