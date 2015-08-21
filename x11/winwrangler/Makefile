# $OpenBSD: Makefile,v 1.13 2015/08/21 19:17:10 sthen Exp $

COMMENT =	desktop daemon to perform advanced window manipulations

V =		0.2.4
DISTNAME =	winwrangler-$V
REVISION=	8

CATEGORIES =	x11

HOMEPAGE =	https://launchpad.net/winwrangler

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	${HOMEPAGE}/0.2/$V/+download/

MODULES =	devel/gettext \
		textproc/intltool

USE_GMAKE =	Yes

RUN_DEPENDS =	x11/gtk+3,-guic

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

BUILD_DEPENDS =	devel/libexecinfo
LIB_DEPENDS =	x11/gtkhotkey \
		devel/libwnck \
		devel/startup-notification

WANTLIB += X11 XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 gio-2.0 glib-2.0
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pcre
WANTLIB += pixman-1 png pthread-stubs xcb  xcb-util
WANTLIB += z gtkhotkey wnck-1 startup-notification-1
WANTLIB += X11-xcb ffi graphite2 gthread-2.0 harfbuzz pthread
WANTLIB += xcb-render xcb-shm

.include <bsd.port.mk>
