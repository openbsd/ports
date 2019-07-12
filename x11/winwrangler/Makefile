# $OpenBSD: Makefile,v 1.19 2019/07/12 20:51:24 sthen Exp $

COMMENT =	desktop daemon to perform advanced window manipulations

V =		0.2.4
DISTNAME =	winwrangler-$V
REVISION=	13

CATEGORIES =	x11

HOMEPAGE =	https://launchpad.net/winwrangler

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkhotkey harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread startup-notification-1
WANTLIB += wnck-1 xcb xcb-render xcb-shm xcb-util z

MASTER_SITES =	${HOMEPAGE}/0.2/$V/+download/

MODULES =	textproc/intltool

USE_GMAKE =	Yes

RUN_DEPENDS =	x11/gtk+3,-guic

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

BUILD_DEPENDS =	devel/libexecinfo
LIB_DEPENDS =	x11/gtkhotkey \
		devel/gettext,-runtime \
		devel/libwnck \
		devel/startup-notification


.include <bsd.port.mk>
