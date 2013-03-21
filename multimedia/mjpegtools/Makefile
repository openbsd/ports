# $OpenBSD: Makefile,v 1.34 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=		tools to edit/modify/encode video streams

DISTNAME=		mjpegtools-2.0.0
REVISION=		0
CATEGORIES=		multimedia
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mjpeg/}

SHARED_LIBS=		lavfile		5.0 \
			lavjpeg		5.0 \
			lavplay		5.0 \
			mjpegutils	5.0 \
			mpeg2encpp	6.0 \
			mplex2		6.0 \

HOMEPAGE=		http://mjpeg.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		GL SDL SDL_gfx X11 Xau Xcomposite Xcursor Xdamage \
			Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm \
			atk-1.0 c cairo drm dv expat ffi fontconfig freetype \
			gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
			gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
			pthread-stubs sndio stdc++ usbhid xcb xcb-render \
			xcb-shm z

MODULES=		devel/gettext
LIB_DEPENDS=		devel/sdl \
			devel/sdl-gfx \
			graphics/jpeg \
			graphics/png \
			multimedia/libdv \
			x11/gtk+2 \

USE_GROFF=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-x \
			--without-v4l
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

FLAVORS=		quicktime optimized
FLAVOR?=

.if !${FLAVOR:Moptimized}
CONFIGURE_ARGS+=	--disable-simd-accel
.endif

.if ${FLAVOR:Mquicktime}
LIB_DEPENDS +=		multimedia/libquicktime
WANTLIB+=		quicktime>=2
.else
CONFIGURE_ARGS +=	--without-libquicktime
.endif

.include <bsd.port.mk>
