# $OpenBSD: Makefile,v 1.23 2015/05/05 17:00:18 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	smart common input method platform

DISTNAME =	scim-1.4.9
REVISION =	14

SHARED_LIBS +=  scim-1.0           0.0           # .10.4
SHARED_LIBS +=  scim-x11utils-1.0  0.0           # .10.4
SHARED_LIBS +=  scim-gtkutils-1.0  0.0           # .10.4

CATEGORIES =	inputmethods chinese japanese korean

HOMEPAGE =	http://www.scim-im.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=scim/}

MODULES =	devel/gettext \
		textproc/intltool
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	x11/gtk+2

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/scim 

USE_GMAKE =	Yes
LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		--with-gtk-im-module-dir="${LOCALBASE}/lib/gtk-2.0/2.10.0/immodules"
CONFIGURE_ENV =	LIBS="-pthread"

.include <bsd.port.mk>
