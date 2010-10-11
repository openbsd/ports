# $OpenBSD: Makefile,v 1.31 2010/10/11 08:11:16 jasper Exp $

SHARED_ONLY=	Yes

COMMENT-main=	Gtk+2 media player based on XMMS
COMMENT-mp3=	MP3 input plugin for BMP
COMMENT-vorbis=	Ogg Vorbis input plugin for BMP

V=		0.9.7.1
DISTNAME=	bmp-$V
PKGNAME-main=	bmp-$V
PKGNAME-mp3=	bmp-mp3-$V
PKGNAME-vorbis=	bmp-vorbis-$V
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=beepmp/}

REVISION-main=	0
REVISION-mp3=	0
REVISION-vorbis=	0

SHARED_LIBS=	beep	2.1

HOMEPAGE=	http://sourceforge.net/projects/beepmp/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM-mp3= patents

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs \
                xcb xcb-render xcb-render-util z gdk_pixbuf-2.0.>=400.3 \
                gdk-x11-2.0.>=400.3 gtk-x11-2.0.>=0.5 glib-2.0.>=400.2 \
                gthread-2.0.>=400.2

MODULES=	devel/gettext

LIB_DEPENDS=	::x11/gtk+2 \
		::devel/glib2

MULTI_PACKAGES=-main
PSEUDO_FLAVORS=	no_mp3 no_vorbis
FLAVOR?=

.if !${FLAVOR:L:Mno_mp3}
MULTI_PACKAGES+=-mp3
.endif
.if !${FLAVOR:L:Mno_vorbis}
MULTI_PACKAGES+=-vorbis
.endif

RUN_DEPENDS-main=${RUN_DEPENDS} \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-main=${LIB_DEPENDS} \
		::audio/esound \
		::devel/libglade2 \
		::textproc/libxml
LIB_DEPENDS-vorbis=${LIB_DEPENDS} \
		::audio/libvorbis

LIB_DEPENDS-mp3=${LIB_DEPENDS} \
		::${BUILD_PKGPATH}
WANTLIB-mp3=	${WANTLIB} beep

WANTLIB-vorbis=	${WANTLIB} ogg vorbis vorbisfile.>=4.0

RUN_DEPENDS-vorbis=	::${BUILD_PKGPATH}
WANTLIB-main=	${WANTLIB} ICE SM pthread audiofile c sndio esd.>=2.34 \
		glade-2.0.>=0.4 xml2.>=9.0

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--disable-alsa \
		--disable-oss

.include <bsd.port.mk>
