# $OpenBSD: Makefile,v 1.83 2019/12/30 14:10:51 ajacoutot Exp $

COMMENT=		extensible window manager

VERSION=		1.12.90
DISTNAME=		sawfish_${VERSION}
PKGNAME=		sawfish-${VERSION}

CATEGORIES=		x11

MASTER_SITES=		https://download.tuxfamily.org/sawfish/ \
			https://download.tuxfamily.org/sawfish/Archive/
EXTRACT_SUFX=		.tar.xz

HOMEPAGE=		https://sawfish.fandom.com/wiki/Main_Page

# GPLv2
# Sounds: Artistic License 2.0
PERMIT_PACKAGE=		Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xrandr Xrender Xtst atk-1.0 c cairo expat
WANTLIB += ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gobject-2.0 graphite2 gtk-x11-2.0 harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangoxft-1.0
WANTLIB += pcre pthread rep xcb z

BUILD_DEPENDS=		archivers/gtar \
			devel/gettext,-tools \
			x11/rep-gtk

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/rep-gtk

LIB_DEPENDS=		devel/gettext,-runtime \
			lang/librep \
			x11/gtk+2

USE_GMAKE=	      Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--with-gnome-prefix=${LOCALBASE}

# needs kde4-config and kf5-config
CONFIGURE_ARGS +=	--without-kde4session \
			--without-kde5session

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/themes/Makefile.in

.include <bsd.port.mk>
