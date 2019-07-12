# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:12 sthen Exp $
COMMENT =		KDE Oxygen widget theme for GTK

V =			1.4.5
DISTNAME =		oxygen-gtk2-${V}
PKGNAME =		gtk2-oxygen-engine-${V}
REVISION =		3

CATEGORIES =		x11
HOMEPAGE =		https://projects.kde.org/projects/playground/artwork/oxygen-gtk/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://download.kde.org/stable/oxygen-gtk2/${V}/src/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

LIB_DEPENDS =		x11/gtk+2

NO_TEST =		Yes

.include <bsd.port.mk>
