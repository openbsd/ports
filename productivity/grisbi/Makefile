COMMENT=	personal accounting application

DISTNAME=	grisbi-3.0.3

EXTRACT_SUFX=	.tar.bz2
SITES=		${SITE_SOURCEFORGE:=grisbi/}

CATEGORIES=	productivity x11

HOMEPAGE=	https://www.grisbi.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 avahi-common bz2 c cairo cairo-gobject
WANTLIB += crypto dbus-1 epoxy execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 goffice-0.10 graphite2 gs gsf-1 gtk-3 harfbuzz
WANTLIB += iconv intl jpeg lzma m ofx osp pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png rsvg-2 spectre xcb xcb-render
WANTLIB += xcb-shm xkbcommon xml2 xslt z
WANTLIB += atspi epoll-shim wayland-client wayland-cursor wayland-egl

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/dconf

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+3 \
		devel/goffice \
		devel/libofx

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

BUILD_DEPENDS=	devel/cunit \
		devel/gettext,-tools
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	--with-openssl \
		--disable-config-file

.include <bsd.port.mk>
