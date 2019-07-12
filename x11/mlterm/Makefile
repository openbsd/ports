# $OpenBSD: Makefile,v 1.62 2019/07/12 20:51:17 sthen Exp $

COMMENT=	color terminal emulator with unicode support
DISTNAME=	mlterm-3.8.3
REVISION=	2

SHARED_LIBS+=	mef	0.0 # 1.0
SHARED_LIBS+=	pobl	0.0 # 1.0

CATEGORIES=	x11

HOMEPAGE=	http://mlterm.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi
WANTLIB += fontconfig freetype fribidi gdk_pixbuf-2.0 gdk-x11-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += util xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mlterm/}

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/fribidi \
		devel/gettext,-runtime \
		x11/gtk+2

FAKE_FLAGS=	INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		sysconfdir="${PREFIX}/share/examples"

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.65
CONFIGURE_ARGS=	--disable-canna \
		--disable-dl-ctl \
		--disable-fcitx \
		--disable-ibus \
		--disable-iiimf \
		--disable-ind \
		--disable-m17nlib \
		--disable-scim \
		--disable-ssh2 \
		--disable-uim \
		--disable-wnn \
		--with-gtk=2.0 \
		--with-gui=xlib,fb \
		--with-imagelib=gdk-pixbuf2 \
		--with-tools=mlclient,mlconfig,mlcc,mlterm-menu,mlimgloader,mlfc
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2"
MAKE_ENV=	LIBmef_VERSION=${LIBmef_VERSION} \
		LIBpobl_VERSION=${LIBpobl_VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
