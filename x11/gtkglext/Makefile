COMMENT=	OpenGL extension to GTK+ 2.0 and later

DISTNAME=	gtkglext-1.2.0.20191219

CATEGORIES=	x11 graphics devel

SHARED_LIBS +=  gdkglext-x11-1.0     0.0      # 200.0
SHARED_LIBS +=  gtkglext-x11-1.0     0.0      # 200.0

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2,  LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo
WANTLIB += drm expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-x11-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xcb-xfixes xshmfence z

# https://gitlab.gnome.org/Archive/gtkglext/merge_requests/1
GIT_COMMIT=	ad95fbab68398f81d7a5c895276903b0695887e2
DISTFILES=	gtkglext-${GIT_COMMIT}${EXTRACT_SUFX}
WRKDIST=	${WRKDIR}/gtkglext-${GIT_COMMIT}
MASTER_SITES=	https://gitlab.gnome.org/Archive/gtkglext/-/archive/${GIT_COMMIT}/

BUILD_DEPENDS=	devel/gobject-introspection \
		textproc/gtk-doc

LIB_DEPENDS=	x11/gtk+2

USE_GMAKE=	Yes

CONFIGURE_STYLE=autoreconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

post-patch:
	cd ${WRKSRC} && gtkdocize

.include <bsd.port.mk>
