# $OpenBSD: Makefile,v 1.10 2017/07/26 22:45:20 sthen Exp $

COMMENT =		PC-9801 emulator

DISTNAME =		xnp2-0.86
EPOCH =			0
REVISION =		1
CATEGORIES =		emulators

HOMEPAGE =		https://www.nonakap.org/np2/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SDL2 SDL2_mixer SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread usb-1.0 z ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.nonakap.org/np2/release/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext 

COMPILER =		gcc

LIB_DEPENDS =		devel/sdl2-mixer \
			devel/libusb1 \
			x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-ia32

WRKSRC =		${WRKDIST}/x11

.include <bsd.port.mk>
