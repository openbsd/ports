# $OpenBSD: Makefile,v 1.90 2010/05/16 08:37:48 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	VideoLAN client; multimedia player

V=		1.0.6
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}p1
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
LIB_DEPENDS+=	dbus-1::x11/dbus
LIB_DEPENDS-main=${LIB_DEPENDS} \
		lib/qt4/QtGui::x11/qt4 \
		SDL_image.>=1.3::devel/sdl-image \
		png.>=4.1::graphics/png \
		mad.>=2.1::audio/libmad \
		mpeg2::graphics/libmpeg2 \
		avcodec.>=13.1,avformat.>=12,avutil.>=6,postproc.>=12,swscale.>=1:ffmpeg->=20080620p10:graphics/ffmpeg \
		faad.>=2::audio/faad \
		fribidi::devel/fribidi \
		a52::audio/liba52 \
		theora.>=1::multimedia/libtheora \
		xml2.>=9::textproc/libxml \
		FLAC.>=7.0::audio/flac \
		mpcdec.>=1::audio/libmpcdec \
		matroska::multimedia/libmatroska \
		ebml::textproc/libebml \
		dvdnav.>=3.0::multimedia/libdvdnav \
		dvdread.>=3.0::devel/libdvdread \
		x264::multimedia/x264 \
		schroedinger-1.0::multimedia/schroedinger \
		dvbpsi.>=3::graphics/libdvbpsi \
		speex::audio/speex \
		tag::audio/taglib \
		dca::audio/libdca \
		proxy::net/libproxy \
		notify::devel/libnotify
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB-main=	GL GLU ICE SM SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xv Xxf86vm atk-1.0 bz2 \
		c cairo dbus-glib-1 expat faac fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m mp3lame oil-0.3 ogg pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 pthread-stubs pthread \
		stdc++.>=46.0 sndio tiff usbhid vorbis vorbisenc xcb-keysyms \
		xcb-render xcb-render-util xcb z

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	gnu
CONFIGURE_STYLE= autoconf
# Should be 2.65
AUTOCONF_VERSION= 2.63
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autotools
CONFIGURE_ARGS+=--disable-altivec \
		--disable-bonjour \
		--disable-cmml \
		--disable-fluidsynth \
		--disable-gme \
		--disable-gnutls \
		--disable-hal \
		--disable-kate \
		--disable-libcdio \
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
		--disable-vcd \
		--disable-zvbi \
		--enable-dvdread \
		--enable-faad \
		--enable-flac \
		--enable-real \
		--enable-realrtsp \
		--enable-release \
		--enable-theora \
		--without-contrib
CONFIGURE_ENV+=	CPPFLAGS="-I${WRKSRC}/include -I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/qt4/pkgconfig" \
		LOCALBASE=${LOCALBASE}

MULTI_PACKAGES=-main

PSEUDO_FLAVORS=	no_web no_jack
FLAVOR?=

.if !${FLAVOR:L:Mno_web}
MULTI_PACKAGES+=-web
COMMENT-web=	Mozilla plugin for embedded media playback
PKGNAME-web=	vlc-web-${V}
BUILD_DEPENDS+=	:xulrunner-devel->=1.8,<1.9:devel/xulrunner/1.8,-devel
CONFIGURE_ARGS+=--enable-mozilla
CONFIGURE_ENV+=	MOZILLA_CONFIG="${LOCALBASE}/bin/xulrunner-config" \
		with_mozilla_pkg="xulrunner-plugin"
PORTPATH=	${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/xulrunner
LIB_DEPENDS-web=${LIB_DEPENDS} \
		vlc,vlccore::${BASE_PKGPATH} \
		nspr4,plc4,plds4::devel/nspr
RUN_DEPENDS-web=::${BUILD_PKGPATH}
WANTLIB-web=	ICE SM X11 Xau Xdmcp Xt Xpm m pthread-stubs xcb
.endif

.if !${FLAVOR:L:Mno_jack}
MULTI_PACKAGES+=-jack
COMMENT-jack=	jackd audio output module for VLC
FULLPKGNAME-jack=vlc-jack-${V}
FULLPKGPATH-jack=x11/vlc,-jack
CONFIGURE_ARGS+=--enable-jack
LIB_DEPENDS-jack=${LIB_DEPENDS} \
		 vlccore::${BASE_PKGPATH} \
		 jack::audio/jack
# any FLAVOR of VLC will do
RUN_DEPENDS-jack=::${BASE_PKGPATH}
WANTLIB-jack=	m
.endif

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS+= --disable-mmx
PKG_ARGS+=-Damd64=1
.else
PKG_ARGS+=-Damd64=0
.endif

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

post-install:
.for _img in 16x16 32x32 48x48 128x128
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${_img}/apps
	${INSTALL_DATA} ${WRKBUILD}/share/vlc${_img}.png \
	    ${PREFIX}/share/icons/hicolor/${_img}/apps/vlc.png
.endfor

.include <bsd.port.mk>
