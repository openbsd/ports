# $OpenBSD: Makefile,v 1.20 2009/08/10 06:33:02 kili Exp $

COMMENT=		tools to edit/modify/encode video streams

DISTNAME=		mjpegtools-1.9.0rc3
PKGNAME=		${DISTNAME}p4
CATEGORIES=		multimedia
SHARED_LIBS=		lavfile		4.0 \
			lavfile-1.9	4.0 \
			lavjpeg		4.0 \
			lavjpeg-1.9	4.0 \
			lavplay		4.0 \
			lavplay-1.9	4.0 \
			mjpegutils	4.0 \
			mjpegutils-1.9	4.0 \
			mpeg2encpp	5.0 \
			mpeg2encpp-1.9	5.0 \
			mplex2		5.0 \
			mplex2-1.9	5.0

HOMEPAGE=		http://mjpeg.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mjpeg/}

WANTLIB=		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype gio-2.0 glib-2.0 glitz \
			gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pcre pthread pthread-stubs pixman-1 \
			sndio stdc++ usbhid xcb z

MODULES+=		devel/gettext
LIB_DEPENDS=		SDL.>=2:sdl-*-!no_x11:devel/sdl \
			dv.>=4::multimedia/libdv \
			jpeg.>=62::graphics/jpeg \
			png.>=4::graphics/png \
			gdk-x11-2.0.>=400.0,gdk_pixbuf-2.0.>=400.0,gtk-x11-2.0.>=400.0::x11/gtk+2 \

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-x \
			--with-libpng \
			--with-libdv

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG="/usr/bin/pkg-config"

FLAVORS=		quicktime optimized
FLAVOR?=

.if ${FLAVOR:L:Moptimized}
CONFIGURE_ARGS+=	--enable-simd-accel
.else
CONFIGURE_ARGS+=	--disable-simd-accel
.endif

.if ${FLAVOR:L:Mquicktime}
LIB_DEPENDS+=		quicktime.>=2::multimedia/libquicktime
CONFIGURE_ARGS+=	--with-libquicktime
WANTLIB+=		GL
.else
CONFIGURE_ARGS+=	--without-libquicktime
.endif

.include <bsd.port.mk>
