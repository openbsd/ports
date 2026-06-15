COMMENT=	GTK+ binding for librep Lisp environment

VERSION=	0.90.8.3
GH_ACCOUNT=	SawfishWM
GH_PROJECT=	rep-gtk
GH_TAGNAME=	rep-gtk-${VERSION}
DISTNAME=	rep-gtk-${VERSION}

CATEGORIES=     x11

HOMEPAGE=	https://sawfish.tuxfamily.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += cairo expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-x11-2.0 harfbuzz iconv intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png xcb
WANTLIB += xcb-render xcb-shm z

BUILD_DEPENDS=		lang/librep>=0.92.7
RUN_DEPENDS=		lang/librep>=0.92.7
LIB_DEPENDS= 		devel/gettext,-runtime \
			x11/gtk+2

USE_GMAKE=		Yes

CFLAGS_base-clang =	-Wno-error=int-conversion

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
