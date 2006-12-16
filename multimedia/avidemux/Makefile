# $OpenBSD: Makefile,v 1.4 2006/12/16 12:22:34 espie Exp $

COMMENT=	"free video editor"

V=		2.3.0
DISTNAME=	avidemux_${V}
PKGNAME=	avidemux-${V}
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
		Xext fontconfig z pango-1.0 pangocairo-1.0 cairo.>=4 \
		atk-1.0 gmodule-2.0 gthread-2.0 glib-2.0 pangoft2-1.0 \
		gobject-2.0

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		mp3lame::audio/lame \
		js.>=1::lang/spidermonkey \
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
		LDFLAGS="-L${LOCALBASE}/lib -logg" \
		PKG_CONFIG=${LOCALBASE}/bin/pkg-config
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
