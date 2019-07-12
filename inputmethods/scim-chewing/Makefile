# $OpenBSD: Makefile,v 1.29 2019/07/12 20:47:13 sthen Exp $

COMMENT=	scim input method module for chewing

GH_ACCOUNT=	chewing
GH_PROJECT=	scim-chewing
GH_TAGNAME=	v0.5.1
REVISION=	2

CATEGORIES=	inputmethods chinese

HOMEPAGE=	http://chewing.im/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo chewing
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png scim-1.0 scim-gtkutils-1.0
WANTLIB += scim-x11utils-1.0 sqlite3 xcb xcb-render xcb-shm z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	textproc/intltool
LIB_DEPENDS=	x11/gtk+2 \
		chinese/libchewing \
		inputmethods/scim

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS= --disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		./autogen.sh

.include <bsd.port.mk>
