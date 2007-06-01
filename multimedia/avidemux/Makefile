# $OpenBSD: Makefile,v 1.8 2007/06/01 00:36:43 ajacoutot Exp $

COMMENT=	"free video editor"

V=		2.3.0
DISTNAME=	avidemux_${V}
PKGNAME=	avidemux-${V}p2
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_BERLIOS:=avidemux/}

HOMEPAGE=	http://fixounet.free.fr/avidemux/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xv atk-1.0 c cairo expat faad fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 m ogg pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png pthread stdc++ z ossaudio

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		faac::audio/faac \
		js.>=1::lang/spidermonkey \
		mp3lame::audio/lame \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		xml2.>=9::textproc/libxml \
		xvidcore.>=4::multimedia/xvidcore \
		x264::multimedia/x264

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GCC3=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -logg"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-jsapi-include=${LOCALBASE}/include/js \
		--enable-xv \
		--with-freetype2 \
		--with-lame \
		--with-fontconfig \
		--with-oss \
		--with-faac \
		--with-faad2 \
		--without-arts \
		--without-esd \
		--without-libdca \
		--without-libsdl \
		--without-newfaad

.include <bsd.port.mk>
