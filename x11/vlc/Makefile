# $OpenBSD: Makefile,v 1.101 2010/09/29 11:30:03 landry Exp $

SHARED_ONLY=	Yes

COMMENT-main=	VideoLAN client; multimedia player

V=		1.0.6
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
REVISION-main=	9
REVISION-jack=	1
REVISION-web=	3
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

MODULES=	devel/gettext x11/qt4
LIB_DEPENDS+=	::x11/dbus
LIB_DEPENDS-main=${LIB_DEPENDS} \
		::audio/faad \
		::audio/flac \
		::audio/liba52 \
		::audio/libcddb \
		::audio/libdca \
		::audio/libmad \
		::audio/libmpcdec \
		::audio/libvorbis \
		::audio/speex \
		::audio/taglib \
		::devel/fribidi \
		::devel/libdvdread \
		::devel/libnotify \
		::devel/sdl-image \
		:ffmpeg->=20080620p10:graphics/ffmpeg \
		::graphics/libdvbpsi \
		::graphics/libmpeg2 \
		::graphics/png \
		::multimedia/libdvdnav \
		::multimedia/libmatroska \
		::multimedia/libtheora \
		::multimedia/schroedinger \
		::multimedia/x264 \
		::net/libproxy \
		::textproc/libebml \
		::textproc/libxml \
		::x11/qt4
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB-main=	FLAC GL GLU ICE lib/qt4/QtGui SM SDL SDL_image X11 Xau \
		Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xv Xxf86vm a52 atk-1.0 avcodec avformat \
		avutil bz2 c cairo cddb dbus-1 dbus-glib-1 dca dvbpsi \
		dvdnav dvdread ebml expat faac faad fontconfig freetype \
		fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gsm gthread-2.0 gtk-x11-2.0 \
		jpeg m mad matroska mp3lame mpcdec mpeg2 notify orc-0.4 \
		ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png postproc proxy pthread-stubs pthread stdc++.>=46.0 \
		schroedinger-1.0 sndio speex swscale tag tiff theora \
		usbhid vorbis vorbisenc x264 xcb-keysyms xcb-render \
		xcb-render-util xcb xml2 z

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	gnu # XXX links with static library archives
CONFIGURE_STYLE= autoconf
# Should be 2.65
AUTOCONF_VERSION= 2.64
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autotools
CONFIGURE_ARGS+=--disable-alsa \
		--disable-altivec \
		--disable-bonjour \
		--disable-cmml \
		--disable-fluidsynth \
		--disable-dvb \
		--disable-fluidsynth \
		--disable-gme \
		--disable-gnutls \
		--disable-hal \
		--disable-kate \
		--disable-libgcrypt \
		--disable-libtar \
		--disable-libv4l2 \
		--disable-live555 \
		--disable-lua \
		--disable-mod \
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
		--enable-flac \
		--enable-real \
		--enable-realrtsp \
		--enable-release \
		--enable-theora \
		--without-contrib \
		--without-tuning
CONFIGURE_ENV+=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/qt4/pkgconfig" \
		LOCALBASE=${LOCALBASE}

CPPFLAGS=	-I${WRKSRC}/include -I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng

MULTI_PACKAGES=-main

PSEUDO_FLAVORS=	no_web no_jack
FLAVOR?=

.if !${FLAVOR:L:Mno_web}
MULTI_PACKAGES+=-web
COMMENT-web=	Mozilla plugin for embedded media playback
PKGNAME-web=	vlc-web-${V}
BUILD_DEPENDS+=	:xulrunner-devel->=1.9:devel/xulrunner/1.9,-devel
CONFIGURE_ARGS+=--enable-mozilla --with-mozilla-sdk-path=${LOCALBASE}/xulrunner1.9
CONFIGURE_ENV+=	with_mozilla_pkg="libxul"
CPPFLAGS+=	-I${LOCALBASE}/include/nspr -I${LOCALBASE}/xulrunner1.9/include -DOPENBSD
PORTPATH=	${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/xulrunner1.9
LIB_DEPENDS-web=${LIB_DEPENDS} \
		::${BASE_PKGPATH} \
		::devel/nspr
RUN_DEPENDS-web=::${BUILD_PKGPATH}
WANTLIB-web=	ICE SM X11 Xau Xdmcp Xt Xpm m nspr4 plc4 plds4 \
		pthread-stubs stdc++ vlc vlccore xcb
.endif

.if !${FLAVOR:L:Mno_jack}
MULTI_PACKAGES+=-jack
COMMENT-jack=	jackd audio output module for VLC
FULLPKGNAME-jack=vlc-jack-${V}
FULLPKGPATH-jack=x11/vlc,-jack
CONFIGURE_ARGS+=--enable-jack
LIB_DEPENDS-jack=${LIB_DEPENDS} \
		 ::${BASE_PKGPATH} \
		 ::audio/jack
# any FLAVOR of VLC will do
RUN_DEPENDS-jack=::${BASE_PKGPATH}
WANTLIB-jack=	m jack vlccore
.endif

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}"

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

post-install:
.for _img in 16x16 32x32 48x48 128x128
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${_img}/apps
	${INSTALL_DATA} ${WRKBUILD}/share/vlc${_img}.png \
	    ${PREFIX}/share/icons/hicolor/${_img}/apps/vlc.png
.endfor

.include <bsd.port.mk>
