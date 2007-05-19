# $OpenBSD: Makefile,v 1.30 2007/05/19 09:13:54 jasper Exp $

COMMENT-main=		"GStreamer Streaming-media framework plug-ins."

VERSION=		0.8.11
PATCHLEVEL=		
DISTNAME=		gst-plugins-${VERSION}
PKGNAME-main=		gstreamer-plugins-${VERSION}p14
SHARED_LIBS=		gstgconf-0.8		1.0 \
			gstinterfaces-0.8	1.0 \
			gstmedia-info-0.8	1.0 \
			gstplay-0.8		1.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gstreamer.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"patent issues"
PERMIT_DISTFILES_FTP=	Yes
			

MASTER_SITES=		http://gstreamer.freedesktop.org/src/gst-plugins/ \
			${MASTER_SITE_GNOME:=sources/gst-plugins/0.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
SHARED_ONLY=		Yes

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gst-plugins

# Disable plugins might try to build that we shouldn't
#CONFIGURE_ARGS+=	--disable-mpeg2enc
CONFIGURE_ARGS+=	--disable-x264
CONFIGURE_ARGS+=	--disable-tests

# do not build the cdaudio plugin, cdparanoia is enough
CONFIGURE_ARGS+=	--disable-cdaudio

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"


PSEUDO_FLAVORS=		minimal
FLAVOR?=
MULTI_PACKAGES=		-main

myWANTLIB=		m z xml2 glib-2.0 \
			gthread-2.0 gmodule-2.0 gobject-2.0 popt
myLIB_DEPENDS=		gstreamer-0.8.>=5.0:gstreamer-0.8.*:devel/gstreamer \
			${MODGETTEXT_LIB_DEPENDS}

WANTLIB-main=		ICE SM X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xv \
			expat fontconfig freetype ossaudio \
			atk-1.0 ORBit-2 \
			pango-1.0 pangoft2-1.0 pangocairo-1.0 \
			gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 \
			cairo glitz png ${myWANTLIB}
LIB_DEPENDS-main=	gconf-2::devel/gconf2 \
			gstcontrol-0.8.>=5.0:gstreamer-0.8.*:devel/gstreamer \
			${myLIB_DEPENDS}

PLUGINS=		arts audiofile cdda dvdnav dvdread esd faad flac \
			gnome gsm jpeg lame mad mikmod mpeg2 musepack ogg \
			sdl sidplay sndfile speex theora tremor vorbis

# a52 doesn't build properly on sparc64
.if ${MACHINE_ARCH} != "sparc64"
PLUGINS+=		a52
.endif


# setup pseudo-flavors and multi-packages
.for PLUGIN in ${PLUGINS}
PSEUDO_FLAVORS+=	no_${PLUGIN}
.  if !${FLAVOR:L:Mno_${PLUGIN}} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-${PLUGIN}
PKGNAME-${PLUGIN}=	gstreamer-${PLUGIN}-${VERSION}${PATCHLEVEL}p13
BASENAME-${PLUGIN}=	gstreamer-${PLUGIN}
.  endif
.endfor
SUBST_VARS+=	BASENAME

# a52dec
COMMENT-a52=		"GStreamer plugin for decoding A/52 audio streams"
WANTLIB-a52=		${myWANTLIB}
LIB_DEPENDS-a52=	a52::audio/liba52 \
			${myLIB_DEPENDS}
OPTIONS-a52=		a52dec

# arts
COMMENT-arts=		"GStreamer plugin for interfacing with KDE arts"
WANTLIB-arts=		vorbis vorbisenc pthread audiofile ossaudio mad ogg \
			esd vorbisfile stdc++ ${myWANTLIB}
LIB_DEPENDS-arts=	artsflow,mcop,artsflow_idl,artsc::x11/kde/arts3 \
			${myLIB_DEPENDS}
OPTIONS-arts=		arts artsc

# audiofile
COMMENT-audiofile=	"GStreamer plugin for using the Audiofile library"
WANTLIB-audiofile=	${myWANTLIB}
LIB_DEPENDS-audiofile=	audiofile::devel/libaudiofile \
			${myLIB_DEPENDS}

# cdaudio
COMMENT-cdaudio=	"GStreamer plugin for using the CD audio library"
WANTLIB-cdaudio=	${myWANTLIB}
LIB_DEPENDS-cdaudio=	cdaudio::audio/libcdaudio \
			${myLIB_DEPENDS}

# cdparanoia (cdda)
COMMENT-cdda=		"GStreamer plugin for reading audio from CDs"
WANTLIB-cdda=		${myWANTLIB}
LIB_DEPENDS-cdda=	cdda_interface,cdda_paranoia::audio/cdparanoia \
			${myLIB_DEPENDS}
OPTIONS-cdda=		cdparanoia

# dvdnavsrc
COMMENT-dvdnav=		"GStreamer plugin for DVD playback with menus"
WANTLIB-dvdnav=		${myWANTLIB}
LIB_DEPENDS-dvdnav=	dvdnav::multimedia/libdvdnav \
			dvdread::devel/libdvdread \
			${myLIB_DEPENDS}

# dvdreadsrc
COMMENT-dvdread=	"GStreamer plugin for DVD playback"
WANTLIB-dvdread=	${myWANTLIB}
LIB_DEPENDS-dvdread=	dvdread::devel/libdvdread \
			${myLIB_DEPENDS}

# esd
COMMENT-esd=		"GStreamer plugin for outputting to esd"
WANTLIB-esd=		audiofile ${myWANTLIB}
LIB_DEPENDS-esd=	esd.>=2::audio/esound \
			${myLIB_DEPENDS}

# faad
COMMENT-faad=		"GStreamer plugin for decoding AAC files"
WANTLIB-faad=		${myWANTLIB}
LIB_DEPENDS-faad=	faad::audio/faad \
			${myLIB_DEPENDS}

# flac
COMMENT-flac=		"GStreamer plugin for encoding/decoding FLAC files"
WANTLIB-flac=		${myWANTLIB}
LIB_DEPENDS-flac=	FLAC::audio/flac \
			${myLIB_DEPENDS}

# gnomevfs
COMMENT-gnome=		"GStreamer plugin supporting GNOME VFS"
WANTLIB-gnome=		crypto ssl gconf-2 \
			dbus-1 dbus-glib-1 util \
			${myWANTLIB}
LIB_DEPENDS-gnome=	gnomevfs-2.>=1800:gnome-vfs2->=2.18:x11/gnome/vfs2 \
			${myLIB_DEPENDS}
OPTIONS-gnome=		gnome_vfs

# gsm
COMMENT-gsm=		"GStreamer plugin for using gsm"
WANTLIB-gsm=		${myWANTLIB}
LIB_DEPENDS-gsm=	gsm::audio/gsm \
			${myLIB_DEPENDS}

# jpeg
COMMENT-jpeg=		"GStreamer plugin for handling JPEG files"
WANTLIB-jpeg=		${myWANTLIB}
LIB_DEPENDS-jpeg=	jpeg::graphics/jpeg \
			${myLIB_DEPENDS}

# lame
COMMENT-lame=		"GStreamer plugin for encoding mp3 files using LAME"
PERMIT_PACKAGE_CDROM-lame=	"patent issues"
WANTLIB-lame=		${myWANTLIB}
LIB_DEPENDS-lame=	mp3lame:lame-*:audio/lame,no_x11 \
			${myLIB_DEPENDS}

# mad
COMMENT-mad=		"GStreamer plugin for decoding mp3 files using MAD"
WANTLIB-mad=		${myWANTLIB}
LIB_DEPENDS-mad=	id3tag::audio/libid3tag \
			mad::audio/libmad \
			${myLIB_DEPENDS}

# mikmod
COMMENT-mikmod=		"GStreamer plugin for using the Mikmod library"
WANTLIB-mikmod=		${myWANTLIB}
LIB_DEPENDS-mikmod=	mikmod::audio/libmikmod \
			${myLIB_DEPENDS}

# mpeg2dec
COMMENT-mpeg2=		"GStreamer plugin for playing and encoding MPEG video files"
WANTLIB-mpeg2=		X11 Xau Xdmcp Xext Xv ${myWANTLIB}
LIB_DEPENDS-mpeg2=	mpeg2::graphics/libmpeg2 \
			${myLIB_DEPENDS}
OPTIONS-mpeg2=		mpeg2dec

# musepack
COMMENT-musepack=	"GStreamer plugin for playing musepack sound files"
WANTLIB-musepack=	${myWANTLIB}
LIB_DEPENDS-musepack=	mpcdec::audio/libmpcdec \
			${myLIB_DEPENDS}

# ogg
COMMENT-ogg=		"GStreamer plugin for demuxing Ogg streams"
WANTLIB-ogg=		${myWANTLIB}
LIB_DEPENDS-ogg=	ogg::audio/libogg \
			${myLIB_DEPENDS}

# sdlvideosink
COMMENT-sdl=		"GStreamer plugin for using SDL to diplay video"
WANTLIB-sdl=		X11 Xau Xdmcp Xext usbhid ${myWANTLIB}
LIB_DEPENDS-sdl=	SDL::devel/sdl \
			gstinterfaces-0.8.>=1.0::devel/gstreamer-plugins \
			${myLIB_DEPENDS}

# sidplay
COMMENT-sidplay=	"GStreamer plugin for playing SID files"
WANTLIB-sidplay=	stdc++ ${myWANTLIB}
LIB_DEPENDS-sidplay=	sidplay::audio/libsidplay \
			${myLIB_DEPENDS}

# sndfile
COMMENT-sndfile=	"GStreamer plugin for using sndfile"
WANTLIB-sndfile=	${myWANTLIB}
LIB_DEPENDS-sndfile=	sndfile::audio/libsndfile \
			${myLIB_DEPENDS}

# speex
COMMENT-speex=		"GStreamer plugin for speex"
WANTLIB-speex=		${myWANTLIB}
LIB_DEPENDS-speex=	speex.>=4:speex->=1.0.5:audio/speex \
			${myLIB_DEPENDS}

# theora
COMMENT-theora=		"GStreamer plugin for theora"
WANTLIB-theora=		${myWANTLIB}
LIB_DEPENDS-theora=	theora::multimedia/libtheora \
			ogg::audio/libogg \
			${myLIB_DEPENDS}

# tremor
COMMENT-tremor=		"GStreamer plugin for Vorbis audio files, integer"
WANTLIB-tremor=		${myWANTLIB}
LIB_DEPENDS-tremor=	vorbisidec::audio/tremor \
			${myLIB_DEPENDS}

# vorbis
COMMENT-vorbis=		"GStreamer plugin for Vorbis audio files"
WANTLIB-vorbis=		ogg ${myWANTLIB}
LIB_DEPENDS-vorbis=	vorbis,vorbisenc::audio/libvorbis \
			${myLIB_DEPENDS}

.for PLUGIN in ${PLUGINS}
.  if ${MULTI_PACKAGES:M-${PLUGIN}}
.    for O in ${OPTIONS-${PLUGIN}}
CONFIGURE_ARGS+=	--enable-$O
.    endfor
.  else
.    for O in ${OPTIONS-${PLUGIN}}
CONFIGURE_ARGS+=	--disable-$O
.    endfor
.  endif
.endfor

.include <bsd.port.mk>
