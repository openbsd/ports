# $OpenBSD: Makefile,v 1.18 2013/09/27 17:49:06 ajacoutot Exp $

COMMENT =	tool for working with RAW images

DISTNAME =	rawstudio-1.2
REVISION =	8

CATEGORIES =	graphics

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://rawstudio.org
MASTER_SITES =	${HOMEPAGE}/files/release/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dbus-1 exiv2 expat fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += jpeg lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs stdc++ tiff xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES =	devel/gettext
LIB_DEPENDS +=	x11/dbus \
		graphics/exiv2 \
		devel/gconf2 \
		x11/gtk+2 \
		graphics/lcms

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk-engines2

NO_TEST =	Yes

.include <bsd.port.mk>
