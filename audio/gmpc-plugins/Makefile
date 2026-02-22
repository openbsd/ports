COMMENT =		bundle of plugins for gmpc

VERSION =		11.8.16
DISTNAME =		gmpc-plugins-${VERSION}
REVISION =		17

CATEGORIES =		audio

MAINTAINER =		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		https://gmpc.fandom.com/wiki/Plugins
SITES =		https://www.musicpd.org/download/gmpc-plugins/${VERSION}/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 epoll-shim
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl jpeg m mpd pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png wayland-client wayland-cursor
WANTLIB += wayland-egl xcb xcb-render xcb-shm xkbcommon xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		textproc/intltool

RUN_DEPENDS =		audio/gmpc>=11.8.90

LIB_DEPENDS=		audio/libmpd>=11.8.90 \
			x11/gtk+3

BUILD_DEPENDS =		audio/gmpc>=11.8.90 \
			x11/gob2

USE_GMAKE =		Yes

LIBTOOL_FLAGS =		--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS=		--disable-mserver \
			--disable-mmkeys \
			--disable-awn \
			--disable-alarm \
			--disable-albumview \
			--disable-avahi \
			--disable-libnotify \
			--disable-lyrics \
			--disable-lyricwiki \
			--disable-tagedit \
			--disable-jamendo \
			--disable-magnatune \
			--disable-lirc \
			--disable-wikipedia

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"

post-patch:
	sed -i -e 's/gtk+-2.0 >= 2.8/gtk+-3.0/g' ${WRKSRC}/*/configure

post-install:
	rm ${PREFIX}/lib/gmpc/plugins/*.la

.include <bsd.port.mk>
