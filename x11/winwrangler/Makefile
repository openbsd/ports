# $OpenBSD: Makefile,v 1.15 2017/10/23 17:11:06 sthen Exp $

COMMENT =	desktop daemon to perform advanced window manipulations

V =		0.2.4
DISTNAME =	winwrangler-$V
REVISION=	10

CATEGORIES =	x11

HOMEPAGE =	https://launchpad.net/winwrangler

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	${HOMEPAGE}/0.2/$V/+download/

MODULES =	textproc/intltool

USE_GMAKE =	Yes

RUN_DEPENDS =	x11/gtk+3,-guic

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

BUILD_DEPENDS =	devel/libexecinfo
LIB_DEPENDS =	x11/gtkhotkey \
		devel/gettext \
		devel/libwnck \
		devel/startup-notification

WANTLIB += X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 gtkhotkey harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 wnck-1 xcb xcb-render
WANTLIB += xcb-shm xcb-util z

.include <bsd.port.mk>
