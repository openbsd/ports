# $OpenBSD: Makefile,v 1.44 2013/03/21 08:45:11 ajacoutot Exp $

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

REVISION=	6

SHARED_LIBS=	beep	2.1

HOMEPAGE=	http://sourceforge.net/projects/beepmp/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs \
                xcb xcb-render z gdk_pixbuf-2.0>=400.3 \
                gdk-x11-2.0>=400.3 gtk-x11-2.0>=0.5 glib-2.0>=400.2 \
                gthread-2.0>=400.2 GL Xxf86vm drm ffi xcb-shm stdc++ \
		harfbuzz icudata icule icuuc

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2 \
		devel/glib2

MULTI_PACKAGES =	-main -mp3 -vorbis

PSEUDO_FLAVORS =	no_mp3 no_vorbis
FLAVOR ?=

.include <bsd.port.arch.mk>
.if !${BUILD_PACKAGES:M-mp3}
CONFIGURE_ARGS += --disable-mp3
.endif
.if !${BUILD_PACKAGES:M-vorbis}
CONFIGURE_ARGS += --disable-vorbis
.endif


RUN_DEPENDS-main=${RUN_DEPENDS} \
		devel/desktop-file-utils
LIB_DEPENDS-main=${LIB_DEPENDS} \
		audio/esound \
		devel/libglade2 \
		textproc/libxml
LIB_DEPENDS-vorbis=${LIB_DEPENDS} \
		audio/libvorbis

LIB_DEPENDS-mp3=${LIB_DEPENDS} \
		${BUILD_PKGPATH}
WANTLIB-mp3=	${WANTLIB} beep pthread

WANTLIB-vorbis=	${WANTLIB} ogg vorbis vorbisfile>=4.0 pthread

RUN_DEPENDS-vorbis=	${BUILD_PKGPATH}
WANTLIB-main=	${WANTLIB} ICE SM pthread audiofile c sndio esd>=2.34 \
		glade-2.0>=0.4 xml2>=9

LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--disable-alsa \
		--disable-oss


.include <bsd.port.mk>
