# $OpenBSD: Makefile,v 1.2 2005/01/03 02:10:36 alek Exp $

COMMENT=		"GStreamer Streaming-media framework plug-ins."

VERSION=		0.8.6
DISTNAME=		gst-plugins-${VERSION}
PKGNAME=		gstreamer-plugins-${VERSION}p0
CATEGORIES=		devel

HOMEPAGE=		http://www.gstreamer.net/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		xml2 z m gthread-2.0.0.0 gmodule-2.0.0.0 glib-2.0.0.0 \
			gobject-2.0.0.0

MASTER_SITES=		http://gstreamer.freedesktop.org/src/gst-plugins/ \
			${MASTER_SITE_GNOME:=sources/gst-plugins/0.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gstcontrol-0.8.5.0,gstreamer-0.8.5.0::devel/gstreamer

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gst-plugins

# Disable plugins we won't or can't build...
CONFIGURE_ARGS+=	--disable-alsa
CONFIGURE_ARGS+=	--disable-mjpegtools
CONFIGURE_ARGS+=	--disable-openquicktime
CONFIGURE_ARGS+=	--disable-qcam
# Speex in ports is too old
CONFIGURE_ARGS+=	--disable-speex
CONFIGURE_ARGS+=	--disable-v4l
CONFIGURE_ARGS+=	--disable-v4l2
CONFIGURE_ARGS+=	--disable-tests

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"


# Flavor/Plugin setup below this point...
#   "You're off the edge of the map, mate.  Here there be monsters"
PSEUDO_FLAVORS=		no_nuthin
FLAVOR?=
MULTI_PACKAGES=
SUBPACKAGE?=

.if empty(SUBPACKAGE)
WANTLIB+=	GL GLU ICE SM X11 Xcursor Xext Xft Xinerama Xrender Xv \
		fontconfig freetype m ossaudio glib-2.0.0.0 \gmodule-2.0.0.0  \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0 atk-1.0.0.0
.endif
.if empty(SUBPACKAGE) || ${SUBPACKAGE} == "-gnome"
LIB_DEPENDS+=		gconf-2::devel/gconf2
WANTLIB+=		ORBit-2
.endif

# a52dec
COMMENT-a52=		"GStreamer plugin for decoding A/52 audio streams"
PKGNAME-a52=		gstreamer-a52-${VERSION}p0
PSEUDO_FLAVORS+=	no_a52
# a52 doesn't build properly on sparc64
.if !${FLAVOR:L:Mno_a52} && !${FLAVOR:L:Mno_nuthin} && ${MACHINE_ARCH} != "sparc64"
MULTI_PACKAGES+=	-a52
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-a52"
LIB_DEPENDS+=		a52::audio/liba52
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-a52}
LIB_DEPENDS+=		a52::audio/liba52
CONFIGURE_ARGS+=	--enable-a52dec
. else
CONFIGURE_ARGS+=	--disable-a52dec
. endif
.endif

# audiofile
COMMENT-audiofile=	"GStreamer plugin for using the Audiofile library"
PKGNAME-audiofile=	gstreamer-audiofile-${VERSION}p0
PSEUDO_FLAVORS+=	no_audiofile
.if !${FLAVOR:L:Mno_audiofile} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-audiofile
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-audiofile"
LIB_DEPENDS+=		audiofile::devel/libaudiofile
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-audiofile}
LIB_DEPENDS+=		audiofile::devel/libaudiofile
CONFIGURE_ARGS+=	--enable-audiofile
. else
CONFIGURE_ARGS+=	--disable-audiofile
. endif
.endif

# cdparanoia (cdda)
COMMENT-cdda=		"GStreamer plugin for reading audio from CDs"
PKGNAME-cdda=		gstreamer-cdda-${VERSION}p0
PSEUDO_FLAVORS+=	no_cdda
.if !${FLAVOR:L:Mno_cdda} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-cdda
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-cdda"
LIB_DEPENDS+=		cdda_interface,cdda_paranoia::audio/cdparanoia
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-cdda}
LIB_DEPENDS+=		cdda_interface,cdda_paranoia::audio/cdparanoia
CONFIGURE_ARGS+=	--enable-cdparanoia
. else
CONFIGURE_ARGS+=	--disable-cdparanoia
. endif
.endif

# dvdreadsrc
COMMENT-dvdread=	"GStreamer plugin for DVD playback"
PKGNAME-dvdread=	gstreamer-dvdread-${VERSION}p0
PSEUDO_FLAVORS+=	no_dvdread
.if !${FLAVOR:L:Mno_dvdread} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-dvdread
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-dvdread"
LIB_DEPENDS+=		dvdread::devel/libdvdread
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-dvdread}
LIB_DEPENDS+=		dvdread::devel/libdvdread
CONFIGURE_ARGS+=	--enable-dvdread
. else
CONFIGURE_ARGS+=	--disable-dvdread
. endif
.endif

# esd
COMMENT-esd=		"GStreamer plugin for outputting to esd"
PKGNAME-esd=		gstreamer-esd-${VERSION}p0
PSEUDO_FLAVORS+=	no_esd
.if !${FLAVOR:L:Mno_esd} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-esd
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-esd"
WANTLIB+=		audiofile
LIB_DEPENDS+=		esd.2::audio/esound
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-esd}
LIB_DEPENDS+=		esd.2::audio/esound
CONFIGURE_ARGS+=	--enable-esd
. else
CONFIGURE_ARGS+=	--disable-esd
. endif
.endif

# flac
COMMENT-flac=		"GStreamer plugin for encoding/decoding FLAC files"
PKGNAME-flac=		gstreamer-flac-${VERSION}p0
PSEUDO_FLAVORS+=	no_flac
.if !${FLAVOR:L:Mno_flac} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-flac
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-flac"
LIB_DEPENDS+=		FLAC::audio/flac
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-flac}
LIB_DEPENDS+=		FLAC::audio/flac
CONFIGURE_ARGS+=	--enable-flac
. else
CONFIGURE_ARGS+=	--disable-flac
. endif
.endif

# gnomevfs
COMMENT-gnome=		"GStreamer plugin supporting GNOME VFS"
PKGNAME-gnome=		gstreamer-gnome-${VERSION}p0
PSEUDO_FLAVORS+=	no_gnome
.if !${FLAVOR:L:Mno_gnome} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-gnome
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
WANTLIB+=		bonobo-activation bonobo-2
LIB_DEPENDS+=		gnomevfs-2::x11/gnome/vfs2
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-gnome}
LIB_DEPENDS+=		gnomevfs-2::x11/gnome/vfs2
CONFIGURE_ARGS+=	--enable-gnome_vfs
. else
CONFIGURE_ARGS+=	--disable-gnome_vfs
. endif
.endif

# jpeg
COMMENT-jpeg=		"GStreamer plugin for handling JPEG files"
PKGNAME-jpeg=		gstreamer-jpeg-${VERSION}p0
PSEUDO_FLAVORS+=	no_jpeg
.if !${FLAVOR:L:Mno_jpeg} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-jpeg
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-jpeg"
LIB_DEPENDS+=		jpeg::graphics/jpeg
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-jpeg}
LIB_DEPENDS+=		jpeg::graphics/jpeg
CONFIGURE_ARGS+=	--enable-jpeg
. else
CONFIGURE_ARGS+=	--disable-jpeg
. endif
.endif

# lame
COMMENT-lame=		"GStreamer plugin for encoding mp3 files using LAME"
PKGNAME-lame=		gstreamer-lame-${VERSION}p0
PSEUDO_FLAVORS+=	no_lame
.if !${FLAVOR:L:Mno_lame} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-lame
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-lame"
PERMIT_PACKAGE_CDROM=	"patent issues"
PERMIT_DISTFILES_CDROM=	"patent issues"
LIB_DEPENDS+=		mp3lame::audio/lame,no_x11
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-lame}
LIB_DEPENDS+=		mp3lame::audio/lame,no_x11
CONFIGURE_ARGS+=	--enable-lame
. else
CONFIGURE_ARGS+=	--disable-lame
. endif
.endif

# mad
COMMENT-mad=		"GStreamer plugin for decoding mp3 files using MAD"
PKGNAME-mad=		gstreamer-mad-${VERSION}p0
PSEUDO_FLAVORS+=	no_mad
.if !${FLAVOR:L:Mno_mad} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-mad
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mad"
LIB_DEPENDS+=		id3tag::audio/libid3tag \
			mad::audio/libmad
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-mad}
LIB_DEPENDS+=		id3tag::audio/libid3tag \
			mad::audio/libmad
CONFIGURE_ARGS+=	--enable-mad
. else
CONFIGURE_ARGS+=	--disable-mad
. endif
.endif

# mikmod
COMMENT-mikmod=		"GStreamer plugin for using the Mikmod library"
PKGNAME-mikmod=		gstreamer-mikmod-${VERSION}p0
PSEUDO_FLAVORS+=	no_mikmod
.if !${FLAVOR:L:Mno_mikmod} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-mikmod
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mikmod"
LIB_DEPENDS+=		mikmod::audio/libmikmod
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-mikmod}
LIB_DEPENDS+=		mikmod::audio/libmikmod
CONFIGURE_ARGS+=	--enable-mikmod
. else
CONFIGURE_ARGS+=	--disable-mikmod
. endif
.endif

# mpeg2dec
COMMENT-mpeg2=		"GStreamer plugin for playing and encoding MPEG video files"
PKGNAME-mpeg2=		gstreamer-mpeg2-${VERSION}p0
PSEUDO_FLAVORS+=	no_mpeg2
.if !${FLAVOR:L:Mno_mpeg2} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-mpeg2
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mpeg2"
LIB_DEPENDS+=		mpeg2::graphics/libmpeg2
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-mpeg2}
LIB_DEPENDS+=		mpeg2::graphics/libmpeg2
CONFIGURE_ARGS+=	--enable-mpeg2dec
. else
CONFIGURE_ARGS+=	--disable-mpeg2dec
. endif
.endif

# ogg
COMMENT-ogg=		"GStreamer plugin for demuxing Ogg streams"
PKGNAME-ogg=		gstreamer-ogg-${VERSION}p0
PSEUDO_FLAVORS+=	no_ogg
.if !${FLAVOR:L:Mno_ogg} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-ogg
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-ogg"
LIB_DEPENDS+=		ogg::audio/libogg
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-ogg}
LIB_DEPENDS+=		ogg::audio/libogg
CONFIGURE_ARGS+=	--enable-ogg
. else
CONFIGURE_ARGS+=	--disable-ogg
. endif
.endif

# sdlvideosink
COMMENT-sdl=		"GStreamer plugin for using SDL to diplay video"
PKGNAME-sdl=		gstreamer-sdl-${VERSION}p0
PSEUDO_FLAVORS+=	no_sdl
.if !${FLAVOR:L:Mno_sdl} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-sdl
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-sdl"
LIB_DEPENDS+=		SDL::devel/sdl
RUN_DEPENDS=		::devel/gstreamer-plugins
WANTLIB+=		X11 usbhid Xext
. endif
.else
. if ${MULTI_PACKAGES:M-sdl}
LIB_DEPENDS+=		SDL::devel/sdl
CONFIGURE_ARGS+=	--enable-sdl
. else
CONFIGURE_ARGS+=	--disable-sdl
. endif
.endif

# vorbis
COMMENT-vorbis=		"GStreamer plugin for Vorbis audio files"
PKGNAME-vorbis=		gstreamer-vorbis-${VERSION}p0
PSEUDO_FLAVORS+=	no_vorbis
.if !${FLAVOR:L:Mno_vorbis} && !${FLAVOR:L:Mno_nuthin}
MULTI_PACKAGES+=	-vorbis
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-vorbis"
WANTLIB+=		ogg
LIB_DEPENDS+=		vorbis,vorbisenc::audio/libvorbis
RUN_DEPENDS=		::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-vorbis}
LIB_DEPENDS+=		vorbis,vorbisenc,vorbisfile::audio/libvorbis
CONFIGURE_ARGS+=	--enable-vorbis
. else
CONFIGURE_ARGS+=	--disable-vorbis
. endif
.endif

.include <bsd.port.mk>
