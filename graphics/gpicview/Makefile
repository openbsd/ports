# $OpenBSD: Makefile,v 1.20 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT =	simple and fast image viewer for X

DISTNAME =	gpicview-0.2.2
REVISION=	1

CATEGORIES =	graphics x11

HOMEPAGE =	http://lxde.sourceforge.net/gpicview/

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z ffi stdc++

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lxde/}

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	x11/gtk+2
RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	yes

# regress tests in po dir are broken
NO_TEST =	yes

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		lt_cv_path_SED=/usr/bin/sed

CONFIGURE_ARGS = ${CONFIGURE_SHARED}

.include <bsd.port.mk>
