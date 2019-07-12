# $OpenBSD: Makefile,v 1.38 2019/07/12 20:47:13 sthen Exp $

COMMENT =	smart common input method platform

DISTNAME =	scim-1.4.9
REVISION =	25

SHARED_LIBS +=  scim-1.0           0.0           # .10.4
SHARED_LIBS +=  scim-x11utils-1.0  0.0           # .10.4
SHARED_LIBS +=  scim-gtkutils-1.0  0.0           # .10.4

CATEGORIES =	inputmethods chinese japanese korean

HOMEPAGE =	https://github.com/scim-im/scim

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread ${COMPILER_LIBCXX} xcb xcb-render
WANTLIB += xcb-shm z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=scim/}

MODULES =	textproc/intltool
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	x11/gtk+2

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/scim 

USE_GMAKE =	Yes
LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --with-gtk-im-module-dir="${LOCALBASE}/lib/gtk-2.0/2.10.0/immodules"
CONFIGURE_ENV =	LIBS="-pthread"

.include <bsd.port.mk>
