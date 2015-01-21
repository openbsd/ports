# $OpenBSD: Makefile,v 1.15 2015/01/21 06:13:48 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	scim input method module for chewing

DISTNAME=	scim-chewing-0.3.4
REVISION=	2

CATEGORIES=	inputmethods chinese

HOMEPAGE=	http://www.scim-im.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo chewing \
		drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread-stubs scim-1.0 scim-gtkutils-1.0 \
		scim-x11utils-1.0 stdc++ xcb xcb-render xcb-shm z ffi

MODULES=	devel/gettext \
		textproc/intltool

MASTER_SITES=	http://chewing.csie.net/download/scim/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	x11/gtk+2 \
		chinese/libchewing \
		inputmethods/scim

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
