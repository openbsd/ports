# $OpenBSD: Makefile,v 1.1.1.1 2004/12/19 07:59:24 jolan Exp $

COMMENT=	"gtk+2 media player based on XMMS"
COMMENT-mp3=	"MP3 input plugin for bmp"
COMMENT-vorbis=	"Ogg Vorbis input plugin for bmp"
DISTNAME=	bmp-0.9.7
PKGNAME-mp3=	bmp-mp3-0.9.7
PKGNAME-vorbis=	bmp-vorbis-0.9.7
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=beepmp/}

HOMEPAGE=	http://www.sosdg.org/~larne/w/BMP_Homepage

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

MODULES=	devel/gettext

WANTLIB=	ICE SM X11 Xcursor Xext Xft Xinerama Xrender c fontconfig \
		freetype m pthread z

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf-2.0.400.3,gdk-x11-2.0.400.3::x11/gtk+2 \
		gtk-x11-2.0.0.5::x11/gtk+2 \
		glib-2.0.400.2,gthread-2.0.400.2::devel/glib2 \
		esd.2.34::audio/esound \
		glade-2.0.0.4::devel/libglade2 \
		xml2.9.0::textproc/libxml

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
LIB_DEPENDS+=	vorbisfile.4.0::audio/libvorbis
.else
CONFIGURE_ARGS+=--disable-vorbis
.endif

SUBPACKAGE?=

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-mp3"
PERMIT_DISTFILES_CDROM=	"patent issues"
PERMIT_DISTFILES_FTP=	"patent issues"
RUN_DEPENDS=		::audio/bmp
. endif
. if ${SUBPACKAGE} == "-vorbis"
LIB_DEPENDS=	vorbisfile.4.0::audio/libvorbis
RUN_DEPENDS=	::audio/bmp
. endif
.endif

WRKDIST=	${WRKDIR}/bmp-0.9.7

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-alsa \
		--disable-oss

.include <bsd.port.mk>
