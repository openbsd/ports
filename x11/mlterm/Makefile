# $OpenBSD: Makefile,v 1.46 2015/09/01 07:45:47 dcoppa Exp $

SHARED_ONLY=	Yes

COMMENT=	color terminal emulator with unicode support
DISTNAME=	mlterm-3.5.1

SHARED_LIBS+=	kik	12.0 # 16.0
SHARED_LIBS+=	mkf	14.1 # 16.1
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
CONFIGURE_ARGS=	--enable-utmp \
		--with-gtk=2.0 \
		--with-gui=xlib,fb \
		--with-imagelib=gdk-pixbuf2 \
		--with-tools=mlclient,mlconfig,mlcc,mlterm-menu,mlimgloader
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2"
MAKE_ENV=	LIBkik_VERSION=${LIBkik_VERSION} \
		LIBmkf_VERSION=${LIBmkf_VERSION} \
		LIBmlterm_core_VERSION=${LIBmlterm_core_VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
