# $OpenBSD: Makefile,v 1.21 2017/07/26 22:45:25 sthen Exp $

COMMENT=	input method data tables for scim

DISTNAME=	scim-tables-0.5.8
REVISION=	9

CATEGORIES=	inputmethods chinese japanese korean

HOMEPAGE=	https://github.com/scim-im/scim-tables

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB+= Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat ffi
WANTLIB+= fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB+= glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB+= gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB+= pcre pixman-1 png pthread pthread-stubs scim-1.0
WANTLIB+= scim-gtkutils-1.0 scim-x11utils-1.0 ${COMPILER_LIBCXX} xcb xcb-render
WANTLIB+= xcb-shm z

MODULES=	devel/gettext

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}

LIB_DEPENDS=	x11/gtk+2 \
		inputmethods/scim

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-skim-support

.include <bsd.port.mk>
