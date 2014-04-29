# $OpenBSD: Makefile,v 1.38 2014/04/29 11:19:50 dcoppa Exp $

SHARED_ONLY=	Yes

COMMENT=	color terminal emulator with unicode support
DISTNAME=	mlterm-3.3.5

SHARED_LIBS+=	kik	11.0 # 15.1
SHARED_LIBS+=	mkf	14.0 # 16.0
SHARED_LIBS+=	mlterm_core	1.0

CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gdk-x11-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += util xcb xcb-render xcb-shm z

HOMEPAGE=	http://mlterm.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mlterm/}

LIB_DEPENDS=	x11/gtk+2

MODULES=	devel/gettext

FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples"

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.65
CONFIGURE_ARGS=	--enable-anti-alias --enable-utmp \
		--with-gtk=2.0 --with-gui=xlib,fb \
		--with-imagelib=gdk-pixbuf2 \
		--with-tools=mlclient,mlconfig,mlcc,mlterm-menu,mlimgloader \
		--with-type-engines=xft,xcore
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2"
MAKE_ENV=	LIBkik_VERSION=${LIBkik_VERSION} \
		LIBmkf_VERSION=${LIBmkf_VERSION} \
		LIBmlterm_core_VERSION=${LIBmlterm_core_VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
