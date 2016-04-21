# $OpenBSD: Makefile,v 1.50 2016/04/21 11:42:29 dcoppa Exp $

COMMENT=	color terminal emulator with unicode support
DISTNAME=	mlterm-3.7.0

SHARED_LIBS+=	kik	12.0 # 16.0
SHARED_LIBS+=	mkf	15.0 # 17.0
SHARED_LIBS+=	mlterm_core	1.0

CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi
WANTLIB += fontconfig freetype fribidi gdk_pixbuf-2.0 gdk-x11-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += util xcb xcb-render xcb-shm z

HOMEPAGE=	http://mlterm.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mlterm/}

LIB_DEPENDS=	devel/fribidi \
		x11/gtk+2

MODULES=	devel/gettext

FAKE_FLAGS=	INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		sysconfdir="${PREFIX}/share/examples"

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.65
CONFIGURE_ARGS=	--disable-canna \
		--disable-fcitx \
		--disable-ibus \
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
MAKE_ENV=	LIBkik_VERSION=${LIBkik_VERSION} \
		LIBmkf_VERSION=${LIBmkf_VERSION} \
		LIBmlterm_core_VERSION=${LIBmlterm_core_VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
