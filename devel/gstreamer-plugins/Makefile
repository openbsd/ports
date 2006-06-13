# $OpenBSD: Makefile,v 1.14 2006/06/13 13:21:48 bernd Exp $

COMMENT=		"GStreamer Streaming-media framework plug-ins."

VERSION=		0.8.11
PATCHLEVEL=		
DISTNAME=		gst-plugins-${VERSION}
PKGNAME=		gstreamer-plugins-${VERSION}p6
SHARED_LIBS=		gstgconf-0.8		1.0 \
			gstinterfaces-0.8	1.0 \
			gstmedia-info-0.8	1.0 \
			gstplay-0.8		1.0

CATEGORIES=		devel

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

HOMEPAGE=		http://www.gstreamer.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
			

MASTER_SITES=		http://gstreamer.freedesktop.org/src/gst-plugins/ \
			${MASTER_SITE_GNOME:=sources/gst-plugins/0.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
SHARED_ONLY=		Yes

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gst-plugins

# Disable plugins might try to build that we shouldn't
#CONFIGURE_ARGS+=	--disable-mpeg2enc
CONFIGURE_ARGS+=	--disable-tests

# do not build the cdaudio plugin, cdparanoia is enough
CONFIGURE_ARGS+=	--disable-cdaudio

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"


PSEUDO_FLAVORS=		minimal
FLAVOR?=
MULTI_PACKAGES=
SUBPACKAGE?=
.if !defined(PACKAGING) || ${SUBPACKAGE} == ""
WANTLIB=		ICE SM X11 Xdamage Xext Xfixes Xrender Xv \
			fontconfig freetype ossaudio \
			atk-1.0.0.0 ORBit-2 \
			pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0 \
			gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0 \
			cairo glitz png
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			gstcontrol-0.8.5.0::devel/gstreamer
.endif
WANTLIB+=		m z xml2 glib-2.0.0.0 \
			gthread-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 popt
LIB_DEPENDS+=		gstreamer-0.8.5.0::devel/gstreamer

PLUGINS=arts audiofile cdda dvdnav dvdread esd faad flac gnome gsm \
jpeg lame mad mikmod mpeg2 musepack ogg sdl sidplay sndfile speex theora \
tremor vorbis

# a52 doesn't build properly on sparc64
.if ${MACHINE_ARCH} != "sparc64"
PLUGINS+=a52
.endif

# setup pseudo-flavors and multi-packages
.for PLUGIN in ${PLUGINS}
PSEUDO_FLAVORS+=no_${PLUGIN}
.  if !${FLAVOR:L:Mno_${PLUGIN}} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-${PLUGIN}
.  endif
.endfor


# a52dec
COMMENT-a52=		"GStreamer plugin for decoding A/52 audio streams"
DEPENDS-a52=		a52::audio/liba52
OPTIONS-a52=		a52dec

# arts
COMMENT-arts=		"GStreamer plugin for interfacing with KDE arts"
WANTLIB-arts=		vorbis vorbisenc pthread audiofile ossaudio mad ogg \
			esd vorbisfile
DEPENDS-arts=		artsflow,mcop,artsflow_idl,artsc::x11/kde/arts3
OPTIONS-arts=		arts artsc

# audiofile
COMMENT-audiofile=	"GStreamer plugin for using the Audiofile library"
DEPENDS-audiofile=	 audiofile::devel/libaudiofile

# cdaudio
COMMENT-cdaudio=	"GStreamer plugin for using the CD audio library"
DEPENDS-cdaudio=	cdaudio::audio/libcdaudio

# cdparanoia (cdda)
COMMENT-cdda=		"GStreamer plugin for reading audio from CDs"
DEPENDS-cdda=		cdda_interface,cdda_paranoia::audio/cdparanoia
OPTIONS-cdda=		cdparanoia

# dvdnavsrc
COMMENT-dvdnav=		"GStreamer plugin for DVD playback with menus"
DEPENDS-dvdnav=		dvdnav::multimedia/libdvdnav \
			dvdread::devel/libdvdread

# dvdreadsrc
COMMENT-dvdread=	"GStreamer plugin for DVD playback"
DEPENDS-dvdread=	dvdread::devel/libdvdread

# esd
COMMENT-esd=		"GStreamer plugin for outputting to esd"
WANTLIB-esd=		audiofile
DEPENDS-esd=		esd.2::audio/esound

# faad
COMMENT-faad=		"GStreamer plugin for decoding AAC files"
DEPENDS-faad=		faad::audio/faad

# flac
COMMENT-flac=		"GStreamer plugin for encoding/decoding FLAC files"
DEPENDS-flac=           FLAC::audio/flac

# gnomevfs
COMMENT-gnome=		"GStreamer plugin supporting GNOME VFS"
WANTLIB-gnome=		crypto ssl gconf-2 \
			ORBit-2 ORBitCosNaming-2 bonobo-activation bonobo-2
DEPENDS-gnome=		gnomevfs-2::x11/gnome/vfs2
OPTIONS-gnome=		gnome_vfs

# gsm
COMMENT-gsm=		"GStremer plugin for using gsm"
DEPENDS-gsm=		gsm::audio/gsm

# jpeg
COMMENT-jpeg=		"GStreamer plugin for handling JPEG files"
DEPENDS-jpeg=		jpeg::graphics/jpeg

# lame
COMMENT-lame=		"GStreamer plugin for encoding mp3 files using LAME"
.if defined(PACKAGING) && ${SUBPACKAGE} == "-lame"
PERMIT_PACKAGE_CDROM=	"patent issues"
PERMIT_DISTFILES_CDROM=	"patent issues"
.endif
DEPENDS-lame=		mp3lame:lame-*:audio/lame,no_x11

# mad
COMMENT-mad=		"GStreamer plugin for decoding mp3 files using MAD"
DEPENDS-mad=		id3tag::audio/libid3tag \
			mad::audio/libmad

# mikmod
COMMENT-mikmod=		"GStreamer plugin for using the Mikmod library"
DEPENDS-mikmod=		mikmod::audio/libmikmod

# mpeg2dec
COMMENT-mpeg2=		"GStreamer plugin for playing and encoding MPEG video files"
WANTLIB-mpeg2=		X11 Xv Xext
DEPENDS-mpeg2=		mpeg2::graphics/libmpeg2
OPTIONS-mpeg2=		mpeg2dec

# musepack
COMMENT-musepack=	"GStreamer plugin for playing musepack sound files"
DEPENDS-musepack=	mpcdec::audio/libmpcdec

# ogg
COMMENT-ogg=		"GStreamer plugin for demuxing Ogg streams"
DEPENDS-ogg=		ogg::audio/libogg

# sdlvideosink
COMMENT-sdl=		"GStreamer plugin for using SDL to diplay video"
WANTLIB-sdl=		Xext usbhid X11
DEPENDS-sdl=		SDL::devel/sdl
.if defined(PACKAGING) && ${SUBPACKAGE} == "-sdl"
LIB_DEPENDS+= 		gstinterfaces-0.8.1.0::devel/gstreamer-plugins
.endif

# sidplay
COMMENT-sidplay=	"GStreamer plugin for playing SID files"
DEPENDS-sidplay=	sidplay::audio/libsidplay

# sndfile
COMMENT-sndfile=	"GStreamer plugin for using sndfile"
DEPENDS-sndfile=	sndfile::audio/libsndfile

# speex
COMMENT-speex=		"GStreamer plugin for speex"
DEPENDS-speex=		speex.4:speex->=1.0.5:audio/speex

# theora
COMMENT-theora=		"GStreamer plugin for theora"
DEPENDS-theora=		theora::multimedia/libtheora \
			ogg::audio/libogg

# tremor
COMMENT-tremor=		"GStreamer plugin for Vorbis audio files,  integer"
DEPENDS-tremor=		vorbisidec::audio/tremor

# vorbis
COMMENT-vorbis=		"GStreamer plugin for Vorbis audio files"
WANTLIB-vorbis=		ogg
DEPENDS-vorbis=         vorbis,vorbisenc::audio/libvorbis

.for PLUGIN in ${PLUGINS}
COMMENT-${PLUGIN}?=	"GStreamer plugin for ${PLUGIN}"
PKGNAME-${PLUGIN}?=	gstreamer-${PLUGIN}-${VERSION}${PATCHLEVEL}p5
OPTIONS-${PLUGIN}?=	${PLUGIN}
.  if defined(PACKAGING)
.    if ${SUBPACKAGE} == "-${PLUGIN}"
LIB_DEPENDS+=	${DEPENDS-${PLUGIN}}
WANTLIB+=	${WANTLIB-${PLUGIN}}
.    endif
.  else
.    if ${MULTI_PACKAGES:M-${PLUGIN}}
LIB_DEPENDS+=	${DEPENDS-${PLUGIN}}
.      for O in ${OPTIONS-${PLUGIN}}
CONFIGURE_ARGS+=--enable-$O
.      endfor
.    else
.      for O in ${OPTIONS-${PLUGIN}}
CONFIGURE_ARGS+=--disable-$O
.      endfor
.    endif
.  endif
.endfor


.include <bsd.port.mk>
