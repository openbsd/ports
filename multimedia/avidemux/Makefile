# $OpenBSD: Makefile,v 1.2 2006/10/20 23:35:17 ajacoutot Exp $

COMMENT=	"free video editor"

DISTNAME=	avidemux-2.1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=     multimedia
MASTER_SITES=	${MASTER_SITE_BERLIOS:=avidemux/}

HOMEPAGE=	http://fixounet.free.fr/avidemux/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB=	freetype c stdc++ Xv ossaudio m X11 Xrender pthread \
		usbhid Xext fontconfig z pango-1.0 pangocairo-1.0 \
		cairo.>=4 atk-1.0 gmodule-2.0 gthread-2.0 glib-2.0 \
		pangoft2-1.0 gobject-2.0

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		mp3lame::audio/lame \
		js.>=1::lang/spidermonkey \
		a52::audio/liba52 \
		mad.>=2::audio/libmad \
		SDL.>=6::devel/sdl \
		xml2.>=9::textproc/libxml \
		xvidcore.>=4::multimedia/xvidcore \
		faad::audio/faad \
		faac::audio/faac \
		glitz.>=1::graphics/glitz \
		ogg.>=5::audio/libogg \
		png.>=5::graphics/png

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
		--enable-mad \
		--with-libsdl \
		--with-freetype2 \
		--with-lame \
		--with-a52dec \
		--with-oss \
		--with-faac \
		--with-faad2 \
		--without-arts \
		--without-esd \
		--without-newfaad

.include <bsd.port.mk>
