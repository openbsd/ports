# $OpenBSD: Makefile,v 1.52 2019/07/12 20:49:00 sthen Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

COMMENT=		reminder program for prevention of RSI

DISTNAME=		workrave-1.10.1
CATEGORIES=		productivity x11
REVISION=		5

HOMEPAGE=		http://www.workrave.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xss Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 atspi c cairo cairo-gobject cairomm-1.0 dbus-1
WANTLIB += dbus-glib-1 epoxy expat ffi fontconfig freetype gconf-2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png pthread sigc-2.0 xcb xcb-render
WANTLIB += xcb-shm xml2 z fribidi

SHARED_LIBS +=		workrave-private-1.0      0.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=workrave/}

BUILD_DEPENDS=		devel/py-cheetah \
			devel/gobject-introspection \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS=		devel/gconf2 \
			multimedia/gstreamer-0.10/core \
			x11/dbus-glib \
			x11/gtk3mm

MODULES=		lang/python \
			textproc/intltool

# c++11 (although only for building against libsigc++)
COMPILER =		base-clang ports-gcc

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
CONFIGURE_ARGS+=	--disable-xml \
			--disable-pulse \
			--enable-dbus

# Someone can add GNOME support later if they like
# (GNOME support requires libpanelapplet)
CONFIGURE_ARGS+=	--disable-gnome2 \
			--disable-gnome3
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-patch:
	sed -i -e 's/-D_XOPEN_SOURCE=600/-D_XOPEN_SOURCE=700 -D_BSD_SOURCE/' `find ${WRKDIST} -name Makefile.am`

pre-configure:
	@cd ${WRKSRC}; env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf

.include <bsd.port.mk>
