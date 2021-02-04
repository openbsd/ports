# $OpenBSD: Makefile,v 1.49 2021/02/04 12:56:01 sthen Exp $

COMMENT =		graphical network monitor

DISTNAME =		etherape-0.9.19
CATEGORIES =		net

HOMEPAGE =		https://etherape.sourceforge.io/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 goocanvas-2.0 graphite2 gtk-3 harfbuzz
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcap pcre pixman-1 png popt xcb xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=etherape/}

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/popt \
			x11/gtk+3 \
			graphics/goocanvas2

# N.B. Requires goocanvas2, which was previously removed from ports due
# to a dependency on the python2 version of py-gobject3. That could be
# reinstated by using --disable-python though it's not really under
# active development any more.

# grab new macros that match *.so.n.m shared libraries
BUILD_DEPENDS +=	devel/gettext,-tools
post-patch:
	cd ${LOCALBASE}/share/aclocal && \
	    cp lib-link.m4 lib-prefix.m4 host-cpu-c-abi.m4 ${WRKSRC}/m4

.include <bsd.port.mk>
