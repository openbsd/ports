# $OpenBSD: Makefile,v 1.27 2009/08/10 06:29:52 kili Exp $

COMMENT-main=	gtk+2 media player based on XMMS
COMMENT-mp3=	MP3 input plugin for bmp
COMMENT-vorbis=	Ogg Vorbis input plugin for bmp
V=		0.9.7
DISTNAME=	bmp-$V
PKGNAME-main=	bmp-$Vp15
PKGNAME-mp3=	bmp-mp3-$Vp14
PKGNAME-vorbis=	bmp-vorbis-$Vp14
SHARED_LIBS +=	beep                 2.0      # .2.0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=beepmp/}

HOMEPAGE=	http://bmp.beep-media-player.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

USE_LIBTOOL=	Yes
USE_X11=	Yes

MODULES=	devel/gettext

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs \
		xcb z

LIB_DEPENDS=	gdk_pixbuf-2.0.>=400.3,gdk-x11-2.0.>=400.3,gtk-x11-2.0.>=0.5::x11/gtk+2 \
		glib-2.0.>=400.2,gthread-2.0.>=400.2::devel/glib2

MULTI_PACKAGES=-main
PSEUDO_FLAVORS=	no_mp3 no_vorbis
FLAVOR?=

.if !${FLAVOR:L:Mno_mp3}
MULTI_PACKAGES+=-mp3
.endif
.if !${FLAVOR:L:Mno_vorbis}
MULTI_PACKAGES+=-vorbis
.endif

.if !${MULTI_PACKAGES:M-mp3}
CONFIGURE_ARGS+=--disable-mp3
.endif
.if !${MULTI_PACKAGES:M-vorbis}
CONFIGURE_ARGS+=--disable-vorbis
.endif

RUN_DEPENDS-main=${RUN_DEPENDS} \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-main=${LIB_DEPENDS} \
		esd.>=2.34::audio/esound \
		glade-2.0.>=0.4::devel/libglade2 \
		xml2.>=9.0::textproc/libxml
LIB_DEPENDS-vorbis=${LIB_DEPENDS} \
		vorbisfile.>=4.0,vorbis::audio/libvorbis

PERMIT_DISTFILES_CDROM-mp3=	patent issues
PERMIT_DISTFILES_FTP-mp3=	patent issues

LIB_DEPENDS-mp3=${LIB_DEPENDS} \
		beep::${BUILD_PKGPATH}

WANTLIB-vorbis=	${WANTLIB} ogg

RUN_DEPENDS-vorbis=	::${BUILD_PKGPATH}
WANTLIB-main=	${WANTLIB} ICE SM pthread audiofile c sndio

WRKDIST=	${WRKDIR}/bmp-0.9.7

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-alsa \
		--disable-oss

.include <bsd.port.mk>
