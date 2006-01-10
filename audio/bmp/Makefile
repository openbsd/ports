# $OpenBSD: Makefile,v 1.10 2006/01/10 11:14:49 espie Exp $

COMMENT=	"gtk+2 media player based on XMMS"
COMMENT-mp3=	"MP3 input plugin for bmp"
COMMENT-vorbis=	"Ogg Vorbis input plugin for bmp"
V=		0.9.7
DISTNAME=	bmp-$V
PKGNAME=	bmp-$Vp5
PKGNAME-mp3=	bmp-mp3-$Vp5
PKGNAME-vorbis=	bmp-vorbis-$Vp4
SHARED_LIBS=	beep	2.0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=beepmp/}

HOMEPAGE=	http://www.sosdg.org/~larne/w/BMP_Homepage

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

WANTLIB=	X11 Xext Xrender fontconfig freetype m z

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf-2.0.400.3,gdk-x11-2.0.400.3,gtk-x11-2.0.0.5::x11/gtk+2 \
		glib-2.0.400.2,gthread-2.0.400.2::devel/glib2
WANTLIB+=	cairo glitz gmodule-2.0.0.0 atk-1.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 png

MULTI_PACKAGES=
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
.if ${MULTI_PACKAGES:M-vorbis}
.  if !defined(PACKAGING)
LIB_DEPENDS+=	vorbisfile.4.0::audio/libvorbis
.  endif
.else
CONFIGURE_ARGS+=--disable-vorbis
.endif

SUBPACKAGE?=

.if $(SUBPACKAGE) != "-mp3"
LIB_DEPENDS+=	esd.2.34::audio/esound \
		glade-2.0.0.4::devel/libglade2 \
		xml2.9.0::textproc/libxml
.endif

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mp3"
PERMIT_DISTFILES_CDROM=	"patent issues"
PERMIT_DISTFILES_FTP=	"patent issues"
LIB_DEPENDS+=		beep::audio/bmp
. elif ${SUBPACKAGE} == "-vorbis"
LIB_DEPENDS=	vorbisfile.4.0,vorbis::audio/libvorbis
WANTLIB+=	gthread-2.0.0.0 gtk-x11-2.0.0.0 gdk-x11-2.0.0.0 glib-2.0.0.0 \
		ogg gdk_pixbuf-2.0.0.0
RUN_DEPENDS=	::audio/bmp
. else
WANTLIB+=	pthread ICE audiofile c SM
. endif
.endif

WRKDIST=	${WRKDIR}/bmp-0.9.7

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-alsa \
		--disable-oss

.include <bsd.port.mk>
