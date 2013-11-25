# $OpenBSD: Makefile,v 1.1.1.1 2013/11/25 05:23:27 bentley Exp $

COMMENT =		PC-9801 emulator

DISTNAME =		xnp2-20130726

CATEGORIES =		emulators

HOMEPAGE =		http://www.nonakap.org/np2/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SDL SDL_mixer SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES =		http://www.nonakap.org/np2/
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/sdl-mixer \
			x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-ia32

WRKSRC =		${WRKDIST}/x11

.include <bsd.port.mk>
