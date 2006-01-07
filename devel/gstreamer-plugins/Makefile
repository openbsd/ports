# $OpenBSD: Makefile,v 1.10 2006/01/07 13:01:40 bernd Exp $

COMMENT=		"GStreamer Streaming-media framework plug-ins."

VERSION=		0.8.11
PATCHLEVEL=		
DISTNAME=		gst-plugins-${VERSION}
PKGNAME=		gstreamer-plugins-${VERSION}p3
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
WANTLIB=		ICE SM X11 Xdamage Xext Xfixes Xrender Xv \
			fontconfig freetype m ossaudio xml2 z \
			glib-2.0.0.0 gmodule-2.0.0.0 gthread-2.0.0.0 \
			gobject-2.0.0.0 atk-1.0.0.0 png cairo \
			pango-1.0.0.0 pangoft2-1.0.0.0 glitz \
			pangocairo-1.0.1000.0 popt ORBit-2\
			gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0
			

MASTER_SITES=		http://gstreamer.freedesktop.org/src/gst-plugins/ \
			${MASTER_SITE_GNOME:=sources/gst-plugins/0.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			gstcontrol-0.8.5.0,gstreamer-0.8.5.0::devel/gstreamer

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gst-plugins

# Disable plugins might try to build that we shouldn't
#CONFIGURE_ARGS+=	--disable-mpeg2enc
CONFIGURE_ARGS+=	--disable-tests

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"


# Flavor/Plugin setup below this point...
#   "You're off the edge of the map, mate.  Here there be monsters"
PSEUDO_FLAVORS=		minimal
FLAVOR?=
MULTI_PACKAGES=
SUBPACKAGE?=
PL_WANTLIB=		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			gthread-2.0.0.0 popt m xml2 z

# a52dec
COMMENT-a52=		"GStreamer plugin for decoding A/52 audio streams"
PKGNAME-a52=		gstreamer-a52-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_a52
# a52 doesn't build properly on sparc64
.if !${FLAVOR:L:Mno_a52} && !${FLAVOR:L:Mminimal} && ${MACHINE_ARCH} != "sparc64"
MULTI_PACKAGES+=	-a52
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-a52"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			a52::audio/liba52
. endif
.else
. if ${MULTI_PACKAGES:M-a52}
BUILD_DEPENDS+=		::audio/liba52
CONFIGURE_ARGS+=	--enable-a52dec
. else
CONFIGURE_ARGS+=	--disable-a52dec
. endif
.endif

# audiofile
COMMENT-audiofile=	"GStreamer plugin for using the Audiofile library"
PKGNAME-audiofile=	gstreamer-audiofile-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_audiofile
.if !${FLAVOR:L:Mno_audiofile} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-audiofile
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-audiofile"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			audiofile::devel/libaudiofile
. endif
.else
. if ${MULTI_PACKAGES:M-audiofile}
BUILD_DEPENDS+=		::devel/libaudiofile
CONFIGURE_ARGS+=	--enable-audiofile
. else
CONFIGURE_ARGS+=	--disable-audiofile
. endif
.endif

# cdparanoia (cdda)
COMMENT-cdda=		"GStreamer plugin for reading audio from CDs"
PKGNAME-cdda=		gstreamer-cdda-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_cdda
.if !${FLAVOR:L:Mno_cdda} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-cdda
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-cdda"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			cdda_interface,cdda_paranoia::audio/cdparanoia
. endif
.else
. if ${MULTI_PACKAGES:M-cdda}
BUILD_DEPENDS+=		::audio/cdparanoia
CONFIGURE_ARGS+=	--enable-cdparanoia
. else
CONFIGURE_ARGS+=	--disable-cdparanoia
. endif
.endif

# dvdreadsrc
COMMENT-dvdread=	"GStreamer plugin for DVD playback"
PKGNAME-dvdread=	gstreamer-dvdread-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_dvdread
.if !${FLAVOR:L:Mno_dvdread} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-dvdread
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-dvdread"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			dvdread::devel/libdvdread
. endif
.else
. if ${MULTI_PACKAGES:M-dvdread}
BUILD_DEPENDS+=		::devel/libdvdread
CONFIGURE_ARGS+=	--enable-dvdread
. else
CONFIGURE_ARGS+=	--disable-dvdread
. endif
.endif

# esd
COMMENT-esd=		"GStreamer plugin for outputting to esd"
PKGNAME-esd=		gstreamer-esd-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_esd
.if !${FLAVOR:L:Mno_esd} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-esd
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-esd"
WANTLIB=		${PL_WANTLIB} audiofile
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			esd.2::audio/esound
. endif
.else
. if ${MULTI_PACKAGES:M-esd}
BUILD_DEPENDS+=		::audio/esound
CONFIGURE_ARGS+=	--enable-esd
. else
CONFIGURE_ARGS+=	--disable-esd
. endif
.endif

# flac
COMMENT-flac=		"GStreamer plugin for encoding/decoding FLAC files"
PKGNAME-flac=		gstreamer-flac-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_flac
.if !${FLAVOR:L:Mno_flac} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-flac
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-flac"
WANTLIB=                ${PL_WANTLIB}
LIB_DEPENDS=            gstreamer-0.8.0.0::devel/gstreamer \
			FLAC::audio/flac
. endif
.else
. if ${MULTI_PACKAGES:M-flac}
BUILD_DEPENDS+=		::audio/flac
CONFIGURE_ARGS+=	--enable-flac
. else
CONFIGURE_ARGS+=	--disable-flac
. endif
.endif

# gnomevfs
COMMENT-gnome=		"GStreamer plugin supporting GNOME VFS"
PKGNAME-gnome=		gstreamer-gnome-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_gnome
.if !${FLAVOR:L:Mno_gnome} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-gnome
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
WANTLIB=		${PL_WANTLIB} crypto ssl gconf-2 \
			ORBit-2 ORBitCosNaming-2 bonobo-activation bonobo-2
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			gnomevfs-2::x11/gnome/vfs2
. endif
.else
. if ${MULTI_PACKAGES:M-gnome}
BUILD_DEPENDS+=		::x11/gnome/vfs2
CONFIGURE_ARGS+=	--enable-gnome_vfs
. else
CONFIGURE_ARGS+=	--disable-gnome_vfs
. endif
.endif

# jpeg
COMMENT-jpeg=		"GStreamer plugin for handling JPEG files"
PKGNAME-jpeg=		gstreamer-jpeg-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_jpeg
.if !${FLAVOR:L:Mno_jpeg} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-jpeg
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-jpeg"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			jpeg::graphics/jpeg
. endif
.else
. if ${MULTI_PACKAGES:M-jpeg}
BUILD_DEPENDS+=		::graphics/jpeg
CONFIGURE_ARGS+=	--enable-jpeg
. else
CONFIGURE_ARGS+=	--disable-jpeg
. endif
.endif

# lame
COMMENT-lame=		"GStreamer plugin for encoding mp3 files using LAME"
PKGNAME-lame=		gstreamer-lame-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_lame
.if !${FLAVOR:L:Mno_lame} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-lame
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-lame"
PERMIT_PACKAGE_CDROM=	"patent issues"
PERMIT_DISTFILES_CDROM=	"patent issues"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			mp3lame:lame-*:audio/lame,no_x11
. endif
.else
. if ${MULTI_PACKAGES:M-lame}
BUILD_DEPENDS+=		:lame-*:audio/lame,no_x11
CONFIGURE_ARGS+=	--enable-lame
. else
CONFIGURE_ARGS+=	--disable-lame
. endif
.endif

# mad
COMMENT-mad=		"GStreamer plugin for decoding mp3 files using MAD"
PKGNAME-mad=		gstreamer-mad-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_mad
.if !${FLAVOR:L:Mno_mad} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-mad
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mad"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			id3tag::audio/libid3tag \
			mad::audio/libmad
. endif
.else
. if ${MULTI_PACKAGES:M-mad}
BUILD_DEPENDS+=		::audio/libid3tag \
			::audio/libmad
CONFIGURE_ARGS+=	--enable-mad
. else
CONFIGURE_ARGS+=	--disable-mad
. endif
.endif

# mikmod
COMMENT-mikmod=		"GStreamer plugin for using the Mikmod library"
PKGNAME-mikmod=		gstreamer-mikmod-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_mikmod
.if !${FLAVOR:L:Mno_mikmod} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-mikmod
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mikmod"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			mikmod::audio/libmikmod
. endif
.else
. if ${MULTI_PACKAGES:M-mikmod}
BUILD_DEPENDS+=		mikmod::audio/libmikmod
CONFIGURE_ARGS+=	--enable-mikmod
. else
CONFIGURE_ARGS+=	--disable-mikmod
. endif
.endif

# mpeg2dec
COMMENT-mpeg2=		"GStreamer plugin for playing and encoding MPEG video files"
PKGNAME-mpeg2=		gstreamer-mpeg2-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_mpeg2
.if !${FLAVOR:L:Mno_mpeg2} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-mpeg2
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mpeg2"
WANTLIB=		${PL_WANTLIB} X11 Xv Xext
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			mpeg2::graphics/libmpeg2
. endif
.else
. if ${MULTI_PACKAGES:M-mpeg2}
BUILD_DEPENDS+=		::graphics/libmpeg2
CONFIGURE_ARGS+=	--enable-mpeg2dec
. else
CONFIGURE_ARGS+=	--disable-mpeg2dec
. endif
.endif

# ogg
COMMENT-ogg=		"GStreamer plugin for demuxing Ogg streams"
PKGNAME-ogg=		gstreamer-ogg-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_ogg
.if !${FLAVOR:L:Mno_ogg} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-ogg
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-ogg"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			ogg::audio/libogg
. endif
.else
. if ${MULTI_PACKAGES:M-ogg}
BUILD_DEPENDS+=		::audio/libogg
CONFIGURE_ARGS+=	--enable-ogg
. else
CONFIGURE_ARGS+=	--disable-ogg
. endif
.endif

# sdlvideosink
COMMENT-sdl=		"GStreamer plugin for using SDL to diplay video"
PKGNAME-sdl=		gstreamer-sdl-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_sdl
.if !${FLAVOR:L:Mno_sdl} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-sdl
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-sdl"
WANTLIB=		${PL_WANTLIB} Xext usbhid X11
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			SDL::devel/sdl \
			gstinterfaces-0.8.1.0::devel/gstreamer-plugins
. endif
.else
. if ${MULTI_PACKAGES:M-sdl}
BUILD_DEPENDS+=		::devel/sdl
CONFIGURE_ARGS+=	--enable-sdl
. else
CONFIGURE_ARGS+=	--disable-sdl
. endif
.endif

# speex
COMMENT-speex=		"GStreamer plugin for speex"
PKGNAME-speex=		gstreamer-speex-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_speex
.if !${FLAVOR:L:Mno_speex} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-speex
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-speex"
WANTLIB=		${PL_WANTLIB}
LIB_DEPENDS=		gstreamer-0.8.0.0::devel/gstreamer \
			speex.4::audio/speex
. endif
.else
. if ${MULTI_PACKAGES:M-speex}
BUILD_DEPENDS+=		:speex->=1.0.5:audio/speex
CONFIGURE_ARGS+=	--enable-speex
. else
CONFIGURE_ARGS+=	--disable-speex
. endif
.endif

# vorbis
COMMENT-vorbis=		"GStreamer plugin for Vorbis audio files"
PKGNAME-vorbis=		gstreamer-vorbis-${VERSION}${PATCHLEVEL}
PSEUDO_FLAVORS+=	no_vorbis
.if !${FLAVOR:L:Mno_vorbis} && !${FLAVOR:L:Mminimal}
MULTI_PACKAGES+=	-vorbis
.endif
.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-vorbis"
WANTLIB=		${PL_WANTLIB} ogg
LIB_DEPENDS=            gstreamer-0.8.0.0::devel/gstreamer \
			vorbis,vorbisenc::audio/libvorbis
. endif
.else
. if ${MULTI_PACKAGES:M-vorbis}
BUILD_DEPENDS+=		::audio/libvorbis
CONFIGURE_ARGS+=	--enable-vorbis
. else
CONFIGURE_ARGS+=	--disable-vorbis
. endif
.endif

.include <bsd.port.mk>
