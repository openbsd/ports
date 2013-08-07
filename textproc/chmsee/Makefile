# $OpenBSD: Makefile,v 1.14 2013/08/07 21:32:40 naddy Exp $

COMMENT =	html help viewer

DISTNAME =	chmsee-1.2.0
REVISION=	7

CATEGORIES =	textproc x11

HOMEPAGE =	https://code.google.com/p/chmsee/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://chmsee.googlecode.com/files/

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo chm expat fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += plc4 plds4 png pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES =	devel/cmake \
		devel/gettext

BUILD_DEPENDS =	devel/xulrunner/1.9,-devel \
		textproc/intltool

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xulrunner/1.9 \
		x11/gtk+2,-guic

LIB_DEPENDS =	devel/nspr \
		devel/chmlib \
		x11/gtk+2 \
		security/libgcrypt


NO_TEST =	Yes

.include <bsd.port.mk>
